#!/bin/bash

# 1 --> command line parameter to ask for the build up of the feature_table.tsv or not '-dft'/'path/to/pre_computed_feature_table.tsv', meaning 'asking yes'/'asking not'

if [ $1 == "-dft" ]
then

# 2 --> 'path/to/protein_sequence.fasta' | the input file in FASTA format containing AA sequences (can be a selection of proteins or an entire proteome)
# 3 --> 'path/to/output_directory/' | ouput directory in which to save both output and metadata from LEAPH application 
# 4 --> 'suffix'/'prefix' to distinguish the current run of LEAPH (e.g. strain name, CaPmali_AT) 

	mkdir $3/tmp
	mkdir $3/$4_LEAPH1.0_features
	echo "New Feature Predictions..."
	echo "SignalP4.1... (1/5)"
	signalp -f long -s notm -t gram+ -T $3/tmp $2 > $3/$4_LEAPH1.0_features/signalp_$4.txt
	echo "TMHMM2.0... (2/5)"
	tmhmm $2 > $3/$4_LEAPH1.0_features/tmhmm_$4.txt
	echo "MobiDB-lite... (3/5)"
	python /opt/mobidb-lite/mobidb-lite.py -bin /opt/mobidb-lite/binx -l $2 -o $3/$4_LEAPH1.0_features/mobidb_$4.txt
	echo "Assembly of the new feature table - Prosite and MOnSTER predictions are based on training ones... (4/5)"
	python3.8 /opt/build_feature_table.py -i $2 -o $3 -of $4_LEAPH1.0_features/feature_table_$4 -sp $3/$4_LEAPH1.0_features/signalp_$4.txt -tm $3/$4_LEAPH1.0_features/tmhmm_$4.txt -mb $3/$4_LEAPH1.0_features/mobidb_$4.txt -pr /opt/pre_feature_predictions/prosite_eff.fasta -fte /opt/pre_feature_tables/training_feature_table_eff.tsv -prm /opt/pre_feature_predictions/prosite_motifs.txt -ms /opt/pre_feature_predictions/monster_score.tsv -mmc /opt/pre_feature_predictions/df_motifs_CLUMPs.tsv
	echo "LEAPH1.0 Predictions... (5/5)"
	python3.8 /opt/LEAPH1.0.py -ft $3/$4_LEAPH1.0_features/feature_table_$4.tsv -o $3 -px $4

else

# 2 --> 'path/to/protein_sequence.fasta' | the input file in FASTA format containing AA sequences (can be a selection of proteins or an entire proteome) 
# 3 --> 'path/to/output_directory' | output directory for prediction.tsv file
# 4 --> 'prefix' used to distinguish the current run of LEAPH
	echo "LEAPH1.0 Predictions..."
	python3.8 /opt/LEAPH1.0.py -ft $1 -o $2 -px $3
	
fi
