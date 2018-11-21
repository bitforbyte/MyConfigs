#Include alises
files=(.bashrc_aliases .bashrc_test .bashrc_profile)
path="$HOME/.dotFiles/MyConfigs/"

# Loop through loading the files
for file in ${files[@]}
do
	file_to_load=$path$file
	if [ -f "$file_to_load" ]; then
		. $file_to_load
	fi
done
