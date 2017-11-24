: ' 
Paramaeter 1 is training file in the following format:
post_id	X	post_text
Parameter 2 is the number of topics

Trains LDA and generates tags groups found in data/topic_tags and also open calais anotations of each topic in data/*_calais_output
'

java -cp "libs/ldaengine/*:libs/mallet/*:libs/rdf/apache-jena-3.1.0/lib/*:libs/mapdb/*:libs/mapdb/mapdbdependencies/*:bin" ldaengine.MalletTopicModeler train $1 $2
