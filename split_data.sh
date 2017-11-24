# Splits data into train, dev, and test (60%, 20%, 20%). This split is not used per se because we ended up needing two splits, so we used train and dev and test combined.
# Example: input: data/Posts_Subset.xml_combined_mallet, output in data folder: MetaData_mallet_*, Posts_mallet_*, Tags_mallet_*, Titles_mallet_*

file=$1
wc -l $file > data/temp
read lines file < data/temp
echo "lines=$lines"
rm data/temp

train=$((((lines*60)+99)/100))
test=$((((lines-train)+1)/2))
dev=$((lines-(train+test)))

echo "train=$train, test=$test, dev=$dev"

java -cp "libs/xmlparser/*:libs/stanford/*:bin" textutils.TextProcessor split $file $train
java -cp "libs/xmlparser/*:libs/stanford/*:bin" textutils.TextProcessor split "${file}_" $test


mv "${file}_${train}" "data/Posts_mallet_train"
mv "${file}__${test}" "data/Posts_mallet_test"
mv "${file}__" "data/Posts_mallet_dev"
rm "${file}_"

o_file=$file
file=$(sed -e "s/combined/titles/g" <<< $o_file)
echo "${file}_${test}"

mv "${file}_${train}" "data/Titles_mallet_train"
mv "${file}__${test}" "data/Titles_mallet_test"
mv "${file}__" "data/Titles_mallet_dev"
rm "${file}_"

file=$o_file
file=$(sed -e "s/combined/tags/g" <<< $file)
echo "${file}_${train}"

mv "${file}_${train}" "data/Tags_mallet_train"
mv "${file}__${test}" "data/Tags_mallet_test"
mv "${file}__" "data/Tags_mallet_dev"
rm "${file}_"

file=$o_file
file=$(sed -e "s/combined/metadata/g" <<< $file)
echo "${file}_${train}"

mv "${file}_${train}" "data/MetaData_mallet_train"
mv "${file}__${test}" "data/MetaData_mallet_test"
mv "${file}__" "data/MetaData_mallet_dev"
rm "${file}_"

