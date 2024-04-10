# This script
# Extracts data from /etc/passwd file into a CSV file.
# The CSV data file contains the user name, user id, and 
# home directory of each user account defined in /etc/passwd.
# Transforms the text delimiter from ":" to ",".
# Loads the data from the CSV file into a table in PostgreSQL database.

#extract phase
echo "Extracting data"
# Extract the columns 1 (user name), 3 (user id), and 6 (home directory) from /etc/passwd file
cut -d":" -f1,3,6 /etc/passwd

# Redirect the extracted output into a file

cut -d":" -f1,3,6 /etc/passwd > extracted-data.txt


# Transform the data into a CSV file

# Transform phase
echo "Transforming data"

#read the extracted data and replace the colon with commas

tr ":" "," < extracted-data.txt > transformed-data.csv

# Load the data into the table users in the ProgreSQL

# Load phase
echo "Loading data"

# Send instructions to connect to 'teamplate1'and
#copy the file to the table 'users' through Command pipeline

echo "\c template1; \COPY users FROM '/home/project/transformed-data.csv' DELIMITERS ',' CSV;" | psql --username=postgres --host=localhost

# make sure to replace the path with the correct path to the transformed data file

# save the file and run the script using the command
bash csv2db.sh

