# Combines dev and test to create second dataset used in our experiment
# Example: input and ouput shown below

cat data/Posts_mallet_dev data/Posts_mallet_test > data/Posts_mallet_train2
cat data/Tags_mallet_dev data/Tags_mallet_test > data/Tags_mallet_train2
cat data/Titles_mallet_dev data/Titles_mallet_test > data/Titles_mallet_train2
cat data/MetaData_mallet_dev data/MetaData_mallet_test > data/MetaData_mallet_train2
cat data/MetaData_mallet_dev_score_more_5 data/MetaData_mallet_test_score_more_5 > data/MetaData_mallet_train2_score_more_5

cat data/Posts_mallet_dev_score_more_5_Noun_Lemm data/Posts_mallet_test_score_more_5_Noun_Lemm > data/Posts_mallet_train2_score_more_5_Noun_Lemm

cat data/Posts_mallet_dev_score_more_5_Noun_Lemm data/Posts_mallet_test_score_more_5_Noun_Lemm > data/Posts_mallet_train2_score_more_5_Noun_Lemm
