# Combines post text along with its best answer if available, title and tags
# Example: input: data/Posts_Subset.xml_clean_mallet, output: Posts_Subset.xml_combined_mallet

java -cp "libs/xmlparser/*:libs/stanford/*:bin" textutils.TextProcessor combine "$1"
