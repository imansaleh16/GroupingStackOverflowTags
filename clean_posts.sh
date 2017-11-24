# Input: XML Stack Overflow dump, output: posts with code snippets removed and formatted to be used in training mallet, also answers, metadata, tags and titles are stored in separate files.

# Example input: data/Posts_Subset.xml, output files in data folder: Posts_Subset.xml_clean_mallet, Posts_Subset.xml_answers_mallet, Posts_Subset.xml_metadata_mallet, Posts_Subset.xml_tags_mallet, Posts_Subset.xml_titles_mallet

java -cp "libs/xmlparser/*:bin" main.Main clean "$1"
