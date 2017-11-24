# Produces posts with community score >= 5
# Example: input: shown below, output: data/*_score_more_5

awk '$4 >= 5' data/MetaData_mallet_train > data/MetaData_mallet_train_score_more_5
awk '$4 >= 5' data/MetaData_mallet_test > data/MetaData_mallet_test_score_more_5
awk '$4 >= 5' data/MetaData_mallet_dev > data/MetaData_mallet_dev_score_more_5

cut -f1 data/MetaData_mallet_train_score_more_5 > data/ids_more_5
perl select_lines.pl data/ids_more_5 data/Posts_mallet_train > data/Posts_mallet_train_score_more_5

cut -f1 data/MetaData_mallet_test_score_more_5 > data/ids_more_5
perl select_lines.pl data/ids_more_5 data/Posts_mallet_test > data/Posts_mallet_test_score_more_5

cut -f1 data/MetaData_mallet_dev_score_more_5 > data/ids_more_5
perl select_lines.pl data/ids_more_5 data/Posts_mallet_dev > data/Posts_mallet_dev_score_more_5

rm data/ids_more_5
