CREATE DATABASE  CCDS
USE CCDS

CREATE TABLE CC_DETAIL(Client_Num INT,
Card_Category VARCHAR(50),
Annual_Fees INT,
Activation_30_Days INT,
Customer_Acq_Cost INT,
Week_Start_Date DATE,
Week_Num VARCHAR(20),
Qtr VARCHAR (25),
current_year INT,
Credit_Limit DECIMAL(10,2),
Total_Revolving_Bal INT,
Total_Trans_Amt	 INT ,
Total_Trans_Vol INT,
Avg_Utilization_Ratio DECIMAL(10,3),
Use_Chip VARCHAR(20),
Exp_Type VARCHAR(50),
Interest_Earned DECIMAL(10,3),
Delinquent_Acc VARCHAR(5));

CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);



LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\book_1.csv'
INTO TABLE cc_detail
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; 


LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\customer.csv'
INTO TABLE cust_detail
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; 



LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\ccs_add.csv'
INTO TABLE cc_detail
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; 



LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\cust_add.csv'
INTO TABLE cust_detail
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; 

select * from cc_add

select * from cust_add

SELECT* FROM CC_DETAIL 

SELECT * FROM CUST_DETAIL




drop table cust_add






