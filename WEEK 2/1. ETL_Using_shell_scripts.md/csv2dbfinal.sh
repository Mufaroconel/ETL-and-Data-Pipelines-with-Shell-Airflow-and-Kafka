# This script
# Extracts data from /etc/passwd file into a CSV file.

# The csv data file contains the user name, user id and 
# home directory of each user account defined in /etc/passwd

# Transforms the text delimiter from ":" to ",".
# Loads the data from the CSV file into a table in PostgreSQL database.

# Extract required user information from /etc/passwd

# In this step, we will extract user name (field 1), user id 
# (field 3), and home directory path (field 6) from /etc/passwd 
# file using the cut command.

# The /etc/passwd has ":"symbol as the column separator"

# Extract phase

echo "Extracting data"

# Extract the columns 1 (user name), 2 (user id) and 
# 6 (home directory path) from /etc/passwd

cut -d":" -f1,3,6 /etc/passwd

# Run the script
# bash csv2dbfinal.sh

#Redirect the extracted outpu into a file named 'extracted-data.txt'

cut -d":" -f1,3,6 /etc/passwd > extracted-data.txt

# Running the script again
# bash csv2dbfinal.sh

# running the command below verifies whether the 'extacted-data' file has been created
# cat extracted-data.txt

#Transform the data into csv format

# the extracted columns are separated by the original ":" delimiter

# Transform phase

echo "Transforming data"

# Reading the extracted data and replacing the colons with commas

# tr ":" "," < extracted-data.txt 

# saving the file and runing the following script
# bash csv2dbfinal.sh

# Verifying the output contains ',' in place of ":"
# replacing the tr command on line 50 with 

tr ":" "," < extracted-data.txt > transformed-data.csv

# saving the file and runing the following script
# bash csv2dbfinal.sh

# verifying whether the 'transformed-data.csv' file has been created
# cat transformed-data.csv

# Loading the data into the table 'users' in ProgreSQL
# To load data from a shell script, we will use the psql client utility in a non-interactive manner.
# This is done by sending the database commands through a command pipeline to psql with the help of echo command.
# Step 1: Add the copy command
# PostgreSQL command to copy data from a CSV file to a table is COPY.
# The basic structure of the command which we will use in our script is,
# COPY table_name FROM 'filename' DELIMITERS 'delimiter_character' FORMAT;
# Now, add the lines below to the end of the script ‘csv2dbfinal.sh’.

# Load phase

echo "Loading data"

# Send the instructions to connect to 'template1' and
# copy the file to the table 'users' through command pipeline.

echo "\c template1; \COPY users FROM '/home/project/transformed-data.csv' DELIMITERS ',' CSV;" | psql --username=postgres --host=localhost

# saving the file and running the script
# bash csv2dbfinal.sh

#  running the following command returns a populated users table

echo '\c template1; \\SELECT * from users;' | psql --username=postgres --host=localhost
