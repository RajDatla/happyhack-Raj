

CREATE TABLE Activity_History(
USER_ID STRING,
EVENT STRING,
EVENT_TYPE STRING,
SKU STRING,
PRICE INT,
SEARCH_STRING STRING,
Order_ID STRING
)
COMMENT 'This is the page view table'
PARTITIONED BY(EVENT STRING, user_id STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' 
STORED AS TEXTFILE;

LOAD DATA LOCAL INPATH '/home/cloudera/users_master.csv' INTO TABLE USER_MASTER PARTITION(EVENT='2014-04-15', User_id='IN');
LOAD DATA LOCAl INPATH '/home/cloudera/products_master.csv' INTO TABLE Product_Master PARTITION(dt='2014-04-15', country='US');



CREATE TABLE USER_MASTER(
ID INT,
NAME STRING,
EMAIL STRING,
GENDER STRING,
PIN_CODE STRING,
Date_of_Birth STRING
sign_update STRING
)

PARTITIONED BY(ID STRING, PIN_CODE STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' 
STORED AS TEXTFILE;

LOAD DATA LOCAL INPATH '/home/cloudera/class6/input/page_view_20140415_IND.csv' INTO TABLE page_view PARTITION(dt='2014-04-15', country='IN');
LOAD DATA LOCAl INPATH '/home/cloudera/class6/input/page_view_20140415_US.csv' INTO TABLE page_view PARTITION(dt='2014-04-15', country='US');


CREATE TABLE Product_Master(
SKU STRING,
NAME STRING,
product_sub_family STRING,
Brand STRING,
Price STRING,
Description STRING
)
PARTITIONED BY(SKU STRING, BRAND STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' 
STORED AS TEXTFILE;

CREATE TABLE PIN_CODE(
pincode STRING,
officetype STRING,
deliverystatus STRING,
divisionname STRING,
regionname STRING,
circlename STRING,
Taluk STRING
district_name STRING,
state_name STRING
)

PARTITIONED BY(pincode STRING, region STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' 
STORED AS TEXTFILE;



CREATE TABLE Event_Code(
Login STRING,
Search STRING,
productpage STRING,
addtocart STRING,
removefromcart STRING,
orderplaced STRING,
orderreturn STRING
logout STRING,

)

PARTITIONED BY(login STRING, productpage STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' 
STORED AS TEXTFILE;