# For tag intrusion task, scores annotator answers against gold answer
# Example: bash score.sh evaluation_data/gold_data/Posts_mallet_train2_v5_score_more_5_Noun_Lemm.10.2000.1.1grams.0.0.0.0.shortposts._doc_topics_topic_*_unique_tags_WIntrusion_Answer evaluation_data/annotation_1/WIDS2T10-DONE
# Output is the number of answers chosen correctly by annotator divided by the total number of topics
java -cp bin evaluation.EvaluationTask evaluate $1 $2
