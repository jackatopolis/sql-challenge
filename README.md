# SQL-challenge - Employee Database
### By: Jack Cohen

## Background

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

Design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. Perform the following:

#### Data Modeling

Inspect the CSVs and sketch out an ERD of the tables using [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

#### Data Engineering

* Use the information you have to create a table schema for each of the six CSV files. Specify data types, primary keys, foreign keys, and other constraints.

  * For the primary keys check to see if the column is unique, otherwise create a composite key, which takes to primary keys in order to uniquely identify a row.
  * Create tables in the correct order to handle foreign keys.

* Import each CSV file into the corresponding SQL table

#### Data Analysis

The database queries file queries the following:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Pandas Analysis

1. Import the SQL database into Pandas. 

2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.


## Repository Files

* Image file of the ERD.

* A `.sql` file of the table schemata.

* A `.sql` file of the queries.

* Jupyter Notebook of the Pandas analysis.

