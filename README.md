#Entity Relation Data Model & OR-DBMS
Design and Implementation of a Database System for a Vacation Rental Website.

The repository contains the following documents 
1. Entity Relatinship Diagram (ERD)
2. Queries which can cantains the set of queries that needs to be addressed/asnwered
3. List of documents which contains the actual queries (e.g q1.sql has SQL query which addresses 1 from Queries.pdf document)

Comments:
--------
Table 'Users' is named as 'Subscribers'.
Multivalued attributes are handled using seperate tables.
I have created views for few queries which will be dropped right after the query execution.

For Queries(Q4 & Q6):
<filename_>1.sql(q4_1.sql,q6_1.sql) => handled using DENSE_RANK()
<filename_>2.sql(q4_2.sql,q6_2.sql) => handled using rownum

For Query #4:
q4_SUM.sql => handled using aggregate funtion SUM()
