# Read from the file file.txt and output all valid phone numbers to stdout.
pattern='^(\([0-9]{3}\) |[0-9]{3}-)[0-9]{3}-[0-9]{4}$'; while read line; do if [[ $line =~ $pattern ]]; then echo $line; fi done < file.txt
