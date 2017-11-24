# Parameter: wild card file name representing topic tags files
# Example: bash eval_task.sh topics_tags_iman/dataset_1/10_topics/Posts_mallet_train_v5_score_more_5_Noun_Lemm.10.2000.1.1grams.0.0.0.0.shortposts._doc_topics_topic_*_unique_tags
# Output: topics_tags_iman/Posts_mallet_train_v5_score_more_5_Noun_Lemm.10.2000.1.1grams.0.0.0.0.shortposts._doc_topics_topic_0_unique_tags_WIntrusion, topics_tags_iman/Posts_mallet_train_v5_score_more_5_Noun_Lemm.10.2000.1.1grams.0.0.0.0.shortposts._doc_topics_topic_0_unique_tags_WIntrusion_Answer

java -cp bin evaluation.EvaluationTask create $1
