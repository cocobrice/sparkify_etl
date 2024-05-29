# Sparkify ETL with Airflow

## Project Overview
For this project an ETL using Airflow to stage and process data in Amazon Redshift was built.

## Workflow Summary
1. **AWS Setup**:
   - AWS IAM role was set up for Redshift.
   - Workgroup with public access was setup on Amazon Redshift.
   - Tables were created on Redshift for the ETL using SQL queries in.
     https://github.com/cocobrice/sparkify_etl/blob/main/Airflow/dags/udacity/common/create_tables.sql
   - Connection details were stored in the below file.
     https://github.com/cocobrice/sparkify_etl/blob/main/set_connections_and_variables.sh
   - Data was copied from udacity-udend/song-data to blackd-udacity/song-data
   - Data was copied from udacity-udend/log-data to blackd-udacity/log-data 

2. **Operators**:
   - The below operator files were updated for their Redshift connections and purpose.
      https://github.com/cocobrice/sparkify_etl/blob/main/Airflow/plugins/final_project_operators/stage_redshift.py
      https://github.com/cocobrice/sparkify_etl/blob/main/Airflow/plugins/final_project_operators/load_fact.py
      https://github.com/cocobrice/sparkify_etl/blob/main/Airflow/plugins/final_project_operators/load_dimension.py
      https://github.com/cocobrice/sparkify_etl/blob/main/Airflow/plugins/final_project_operators/data_quality.py
     
3. **DAG**:
   - The DAG was updated to create task arguments from the above operators, populating them with the sql queries provided.
     https://github.com/cocobrice/sparkify_etl/blob/main/Airflow/dags/udacity/common/final_project_sql_statements.py
   - Task dependencies and default arguments were also populated.
     https://github.com/cocobrice/sparkify_etl/blob/main/Airflow/dags/project/starter/final_project.py

## License
This project is licensed under the MIT License.

