# the reason why there are errors in this file is beacause airflow is not installed in my local machine
# import the libraries
from datetime import timedelta

# The DAG object; we'll need this to instantiate a DAG
from airflow import DAG 

# Operators we will need this to write tasks!
from airflow.Operators.bash_operator import bash_operator

# This makes scheduling easy
from airflow.utils.dates import days_ago


# Defining DAG arguments
default_args = {
    # Specifies the owner of the DAG
    'owner': 'Codeconel',
    
    # Defines the start date of the DAG as the current date
    'start_date': days_ago(0),
    
    # Specifies the email address(es) to receive notifications
    'email': ['nyakudyamufa2002@gmail.com'],
    
    # Determines whether email notifications should be sent on task failure
    'email_on_failure': True,
    
    # Determines whether email notifications should be sent on task retry
    'email_on_retry': True,
    
    # Specifies the number of retries for failed tasks
    'retries': 1,
    
    # Specifies the time delay between retries for failed tasks (5 minutes)
    'retry_delay': timedelta(minutes=5),
}


# Defining the DAG

dag = DAG(
    # Unique identifier for the DAG
    dag_id='sample-etl-dag',
    
    # Default arguments for the DAG (defined previously)
    default_args=default_args,
    
    # Description of the DAG
    description='Sample ETL DAG using Bash',
    
    # Interval at which the DAG should run (once per day)
    schedule_interval=timedelta(days=1),
)

# define the Tasks

# define the first task names extract
extract = Bash_operator(
    task_id = 'extract',
    # bash_command = 'echo extract',
    # additing the real command for extracting data
    bash_command = 'cut -d":" -f1,3,6 /etc/passwd > /home/project/airflow/dags/extracted-data.txt',
    dag=dag,
)

# define the second task named transform
# additing the third task from transform_and_load to transform_and_load 

transform_and_load = Bash_operator(
    task_id = 'transform',
    # bash_command = 'echo transform',
    # additing with the real command for transforming extracted data
    bash_command = 'tr ":" "," < /home/project/airflow/dags/extracted-data.txt > /home/project/airflow/dags/transformed-data.csv'
    dag = dag,
)

# define the third task named load

# transform_and_load = Bash_operator(
#    task_id = 'load',
#    bash_command = 'echo load',
#    dag=dag
#)

# task pipeline

extract>>transform>>load

