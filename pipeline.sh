bash clean_posts.sh data/Posts_Subset.xml
bash combine_posts.sh data/Posts_Subset.xml_clean_mallet
bash split_data.sh data/Posts_Subset.xml_combined_mallet
bash filter_posts_score_more_5.sh
bash get_data_noun_and_lemma.sh
bash create_2_sets.sh
# train lda using two data set and 5 topics
bash train_lda.sh data/Posts_mallet_train_score_more_5_Noun_Lemm 5
bash train_lda.sh data/Posts_mallet_train2_score_more_5_Noun_Lemm 5

