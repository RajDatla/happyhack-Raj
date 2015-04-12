
LOAD DATA LOCAL INPATH '/home/cloudera/users_master.csv' INTO TABLE USER_MASTER PARTITION(EVENT='2014-04-15', User_id='IN');
LOAD DATA LOCAl INPATH '/home/cloudera/products_master.csv' INTO TABLE Product_Master PARTITION(dt='2014-04-15', country='US');
LOAD DATA LOCAL INPATH '/home/cloudera/class6/input/all_india_pin_code.csv' INTO TABLE PIN_CODE PARTITION(region='KA', pincode='IN');
LOAD DATA LOCAl INPATH '/home/cloudera/class6/input/events_feed.csv' INTO TABLE page_view PARTITION(login='2014-04-15', productpage='US');

