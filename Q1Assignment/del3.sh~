#!/bin/bash
echo "Searching for .tmp files ......."
for file in $(find . -name "*.tmp" -mtime -3)
do  
		echo "Delete $file  for Yess press y for No press n" 
		read choice
		if [ "$choice"  =  "y" ]
		then 
			echo "Deleting....."
			rm "$file"
		else
			echo "Skiped"
		fi
done
