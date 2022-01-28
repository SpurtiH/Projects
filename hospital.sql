LOAD DATA LOCAL INFILE '/Users/--/Desktop/Milliman/Hospitals3_out.csv'
INTO TABLE hospital
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS 
(HOSPITAL_DIM_KEY, TORCH_HOSPITAL_ID, PROVIDER_NUMBER,
 HOSPITAL_TYPE, NAME , ADDRESS_LINE_1,STATE,HOSPITAL_OWNERSHIP);

 
 create table hospital(
 HOSPITAL_DIM_KEY int not null auto_increment, TORCH_HOSPITAL_ID int not null,
 PROVIDER_NUMBER int not null,HOSPITAL_TYPE varchar(255) not null, NAME varchar(255) not null 
 , ADDRESS_LINE_1 varchar(255) not null,STATE varchar(255) not null,
 HOSPITAL_OWNERSHIP varchar(255) not null,
 primary key (HOSPITAL_DIM_KEY))
 
 create table health_sysytem(HEALTH_SYSTEM_DIM_KEY int not null auto_increment, TORCH_HEALTH_SYSTEM_ID int not null, 
 NAME varchar(255) not null,ADDRESS_LINE_1 varchar(255) not null,CITY varchar(255) not null,STATE varchar(255) not null,
 ZIP varchar(255) not null, PHONE varchar(255) not null,WEBSITE varchar(255) not null,
 primary key (HEALTH_SYSTEM_DIM_KEY)
 )
 
LOAD DATA LOCAL INFILE '/Users/--/Desktop/Milliman/Health Systems_out.csv'
INTO TABLE health_sysytem
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS 
(HEALTH_SYSTEM_DIM_KEY, TORCH_HEALTH_SYSTEM_ID, NAME,
       ADDRESS_LINE_1, CITY, STATE, ZIP, PHONE,
       WEBSITE);
 