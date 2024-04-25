#!/bin/bash

# 1 --> command line parameter to ask for the build up of the feature_table.tsv or not '-dft'/'path/to/pre_computed_feature_table.tsv', meaning 'asking yes'/'asking not'

if [ $1 == "-dft" ]
then

# 2 --> 'path/to/protein_sequence.fasta' | the input file in FASTA format containing AA sequences (can be a selection of proteins or an entire proteome)
# 3 --> 'suffix'/'prefix' to distinguish the current run of LEAPH (e.g. strain name, CaPmali_AT)

	mkdir ./LEAPH_results
	mkdir ./LEAPH_results/tmp
	mkdir ./LEAPH_results/$3_LEAPH1.0_features_pred
	echo "New Feature Predictions..."
	echo "SignalP4.1... (1/5)"
	signalp -f long -s notm -t gram+ -T ./LEAPH_results/tmp $2 > ./LEAPH_results/$3_LEAPH1.0_features_pred/signalp_$3.txt
	echo "TMHMM2.0... (2/5)"
	tmhmm $2 > ./LEAPH_results/$3_LEAPH1.0_features_pred/tmhmm_$3.txt
	echo "MobiDB-lite... (3/5)"
	python /opt/mobidb-lite/mobidb-lite.py -bin /opt/mobidb-lite/binx -l $2 -o ./LEAPH_results/$3_LEAPH1.0_features_pred/mobidb_$3.txt
	echo "Assembly of the new feature table - Prosite and MOnSTER predictions are based on training ones... (4/5)"
	python3.8 /opt/build_feature_table.py -i $2 -o ./LEAPH_results -of feature_table_$3 -sp ./LEAPH_results/$3_LEAPH1.0_features_pred/signalp_$3.txt -tm ./LEAPH_results/$3_LEAPH1.0_features_pred/tmhmm_$3.txt -mb ./LEAPH_results/$3_LEAPH1.0_features_pred/mobidb_$3.txt -pr /opt/pre_feature_predictions/prosite_eff.fasta -fte /opt/pre_feature_tables/training_feature_table_eff.tsv -prm /opt/pre_feature_predictions/prosite_motifs.txt -ms /opt/pre_feature_predictions/monster_score.tsv -mmc /opt/pre_feature_predictions/df_motifs_CLUMPs.tsv
	echo "LEAPH1.0 Predictions... (5/5)"
	python3.8 /opt/LEAPH1.0.py -ft ./LEAPH_results/feature_table_$3.tsv -o ./LEAPH_results -px $3

else

# 1 --> 'path/to/pre-computer feature table' 
# 2 --> 'prefix' used to distinguish the current run of LEAPH
	echo "LEAPH1.0 Predictions..."
	mkdir ././LEAPH_results
	python3.8 /opt/LEAPH1.0.py -ft $1 -o ./LEAPH_results -px $2
	
fi
