# LEAPH - (ensembLe model for Effector clAssification in PHytoplasmas)
LEAPH is an ensemble machine learning predictor able to classify effector proteins form other function-generic proteins. It is compose by 4 classification models: Random Forest, XGBoost, Gaussian Naive Bayes and Multinomial Naive Bayes. 

LEAPH output is a classification of proteins based on "effector" voting of the 4 models agreement. 
Votes range from "-" == no agreement to 4 == full agreement for each protein in the dataset. 
To be considered an effector, a protein has to reach a correctness prediction-probability >= 90% by at least one of the models. 

This repository contains both LEAPH source code and scripts to build up the feature tables necessary for its application, along with a Singularity container recipe (definition file) for a user-friendly usage of this effector proteins predictor. 

Moreover, in the directory ```./EffectorComb```, a Shiny App showing different configurations of Self-Organizing Maps is available to explore the results from the LEAPH application for 13 phytoplasma proteomes. The directory also contains a Python script that allows the user to create a properly formatted table to be uploaded on the Shiny App to map the actual predicted proteins on the effector landscape offered by LEAPH. 

The Shiny App usage is explained in the ```./EffectorComb/README.md``` file in the aforementioned directory
## Minimal system requirements 
LEAPH is tested on:
- Linux Mint 20.3
- 16GB RAM
- Intel© Core™ i5-8250U CPU @ 1.60GHz × 4
- 1TB SSD

And the container images generated with Singularity3.7 from the available recipes/definition files.
  
## Usage
LEAPH can be used as a stand-alone script or using the available definition file to build up the singularity container (recommended)

### LEAPH from container
To properly use LEAPH you can clone the directory and build the container. 
Before anything else please download the three main software required for the prediction:
- SignalP4.1 https://services.healthtech.dtu.dk/services/SignalP-4.1/
- TMHMM 2.0 https://services.healthtech.dtu.dk/services/TMHMM-2.0/
- MobiDB-lite 1.0 https://github.com/BioComputingUP/MobiDB-lite/releases/tag/v1.0

Then, update the LEAPH1.0.recipe section ```# Please modify the following paths...``` with the respective paths to find the ```.tar.gz `` files. During container image building, it will ask you to reconfigure the locales for Perl; please indicate the required information and proceed with the process. 

Thus, in this directory run:
```
sudo singularity build LEAPH1.0.simg ./LEAPH1.0.recipe
```
Then, you can execute the internal LEAPH1.0.sh file, remaining in this directory.

**---LEAPH.sh help---**
```
-first argument: -dft/pre_computed_feature_table.tsv	use "-dft" (do feature table) if no pre-computed feature table is available (LEAPH will start the prediction of the features and feature table build-up)
							use /path/to/pre_computed_feature_table.tsv otherwise
							(the column in feature_table must be in the same order of those in training_feature_tables.tsv) 
if -dft:
	-second argument: path/to/protein_sequence.fasta	the input file in FASTA format containing AA sequences (can be a selection of proteins or an entire proteome)
	-third argument: path/to/output_directory		ouput directory in which to save both feature predictions/feature_table/LEAPH_putative_effector_predictions 
	-fourth argument: suffix/prefix				to distinguish the current run of LEAPH (e.g. strain name, CaPmali_AT)

otherwise:
	-second argument: path/to/output_directory		ouput directory in which to save LEAPH putative effector prediction 
	-third argument: prefix					to distinguish the current run of LEAPH (e.g. strain name, CaPmali_AT)
```
**Container Usage**
```
singularity exec -B binding/dirs LEAPH1.0.simg /opt/LEAPH1.0.sh -dft /path/to/aa_sequences.fasta suffix/prefix
```
**or**
```
singularity exec -B /binding/dirs LEAFPH1.0.simg /opt/LEAPH.sh /path/to/feature_table.tsv prefix
```

To verify LEAPHs' correct functioning, we have prepared a small dataset as a DEMO application. Thus, you can run the following command:
```
singularity exec LEAPH1.0.simg /opt/LEAPH1.0.sh -dft ./DEMO/DEMO_sequences.fasta DEMO
```
### LEAPH stand-alone 
The required python3.8.10 libraries are:
- biopython v1.78
- pandas v1.2.4
- numpy v1.20.1
- joblib v1.0.1

The required software to be installed separately following the previous path, are:
- SignalP - v4.1
- TMHMM - v2.0
- MobiDB-lite - v1.0
- (Prosite - v1.86 if you are changing the training set of +)
Please carefully read the instructions for each tool before using it for LEAPH feature prediction to ensure a clean installation.

To properly use LEAPH you can download the directory and execute the following steps:
**Predict features** 
```
signalp4.1 -f long -s notm -t gram+ -T /path/to/tmpdir /path/to/aa_sequences.fasta > signalp_out.txt
```
```
tmhmm /path/to/aa_sequences.fasta > tmhmm_out.txt
```
```
python mobidb-lite.py -bin mobidb-lite/binx -l /path/to/aa_sequences.fasta -o mobidb_out.txt
```
As before you can use the DEMO sequences to try the stand-alone application.
```
mkdir tmp
```
```
mkdir pred
```
```
cd pred
```
```
signalp4.1 -f long -s notm -t gram+ -T ./tmp ./DEMO/DEMO_sequences.fasta > signalp_DEMO.txt
```
```
tmhmm ./DEMO/DEMO_sequences.fasta > tmhmm_DEMO.txt
```
```
python2.7 /path/to/mobidb-lite.py -bin path/to/mobidb-lite/binx -l ./DEMO/DEMO_sequences.fasta -o mobidb_DEMO.txt
```

**Build-up the feature table**
```
python3.8.10 ./essentials/build_feature_table.py -i /path/to/aa_sequences.fasta\
					-o /path/to/output_dir/feature_table_name\
					-sp /path/to/feature_prediction_dir/signalp_out.txt\
					-tm /path/to/feature_prediction_dir/tmhmm_out.txt\
					-mb /path/to/feature_prediction_dir/mobidb_out.txt\
					-pr ./pre_feature_prediction/prosite_eff.fasta\
					-fte ./training_feature_tables/feature_table_eff_std.tsv\
					-prm ./pre_feature_prediction/prosite_motifs_profiles_eff.txt\
					-ms ./pre_feature_prediction/monster_score_eff.tsv\
					-mmc ./pre_feature_prediction/df_motif_CLUMPs_eff.tsv
```
**Predict putative effector proteins with LEAF**
```
python3.8.10 ./essentials/LEAPH1.0.py -ft /path/to/feature_table_name.tsv -o /path/to/output_dir -px distinguishable_name 
```
Again, you can try with the DEMO application, remaining in the git directory (and using the -o parameter to change the location of the output predictions from LEAPH_results):
```
python3.8.10 ./essentials/build_feature_table.py -i ./DEMO/DEMO_sequences.fasta\
					-sp ./pred/signalp_DEMO.txt\
					-tm ./pred/tmhmm_DEMO.txt\
					-mb ./pred/mobidb_DEMO.txt\
					-pr ./essentials/prosite_eff.fasta\
					-fte ./essentials/feature_table_eff_std.tsv\
					-prm ./essentials/prosite_motifs_profiles_eff.txt\
					-ms ./essentials/df_summary_results_monster.tsv\
					-mmc ./essentials/df_motifs_CLUMPs.tsv
```
```
python3.8.10 ./essentials/LEAPH1.0.py -ft ./LEAPH_results/feature_table.tsv -px DEMO
```

## Feature Considered
Protein features considered for classification are:
- Protein length
- Signal Peptide (SignalP 4.1)
- Transmembrane Region (TMHMM)
 - AA in transmembrane domain
 - first 60 AA
 - Probability of N-in
 - mTMR - warning signal sequence 
-  Intrinsically disordered regions - IDRs (MobiDB-lite)
- Motifs/Profiles in AA sequence (Prosite)
- CLUMPs (MOnSTER)
- bin of sequence and presence of CLUMPs

## Classification
- Methods: **Random Forest**, **XGBoost**, **Gaussian Naive Bayes**, **Multinomial Naive Bayes**
- Overall data-set partition and validation: **5-fold cross validation** 
- Goodness of model:
  - Accuracy
  - F-measure
  - Precision-Recall
  - Feature importance (SHAP)
- number of variables (features): 30




