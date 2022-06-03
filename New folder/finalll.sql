create database hospital 
use hospital
create table rooms
(room_id int primary key,
room_department varchar(50),
price int );

insert into rooms
(room_id,room_department,price)
values
(1,'eyes',1500)
(3,'inwardly',1400)
;______________________________

create table bills
(bill_id int primary key,
pat_id int references TbPatients(Patient_id),
producut_code int references Tbproducts(pro_id),
operation_time time ,
cost int,
product_name varchar (50),
);
insert into bills 
(bill_id,pat_id,producut_code,operation_time,cost,product_name)
values
(12,310,610,'3;17',1300,'dddddd')
(12,313,611,'2:14',1700,'vvvvvv')
(12,312,612'4:14',1405,'zzzzzz')
(12,311,613,'6:12',1400,'aaaaaa')
;_______________________________
create table medicine_orders(
 medicine_code int primary key,
 name_medicine varchar(50) not null,
 quantity int not null,
 price int not null,
 doctor_id int,
 operation_date date not null,
 operation_time time  not null,
 customer_name varchar (50),
 total_price int ,
 );
 
 insert into medicine_orders
 ( medicine_code,name_medicine,quantity,price,doctor_id,operation_date ,operation_time,customer_name,total_price)
 values
 (1,'nbjgbu',50,58,5,6/2/2011,'8:14','majed',700);
 (2,'mnlikn',65,73,7,2/7/2004,'9:14','olaa',400),
 (3,'klhnmn',21,80,50,1/4/2014,'5:17','hosny',450),
 (4,'vbngfnt',72,740,4,2/6/2013,'2:03','samir',632),
 (5,'xgfcjhf',34,74,3,2/12/2020,'4:07','rana',753);
 
 --_______________________________
 create table stores(
 stores_id int primary key,
 num_of_tool int not null,
 hardware_name varchar(50),
 total_cost int ,
 );
 
 insert into stores
 (stores_id,num_of_tool,hardware_name,total_cost)
 values
 (2,54,'oxgun tup',41),
 (1,32,'lab tools',45),
 (3,32,'sonar',74),
 (5,65,'heart rate monitor',47),
 (4,65,'pressure device',42);
 
 ;__________________________________________
 create table accountant(
national_id int primary key,
gender varchar (30),
birth_date date,
e_mail varchar (40),
nationality varchar(41),
phone varchar(15) unique,
);


insert into accountant
(national_id,gender,e_mail,nationality,phone)
values
(789,'male',4/2/2000,'mbZAQWSb.bj.jb.','Egyptian','21563165745'),
(790,'male',4/2/2000,'mbjkbkkkb.bj.jb.','Egyptian','21561235745'),
(714,'female',4/2/2000,'mbNBBVCb.bj.jb.','Kuwaiti','21563161471'),
(774,'male',4/2/2000,'mjuikBVCb.bj.jb.','Egyptian','2157412551471'),
(723,'female',4/2/2000,'masdfVCb.bj.jb.','Kuwaiti','21452331471');


create table add_acc(
emp_id int references  accountant(national_id),
address varchar(30) not null, );

insert into add_acc
(emp_id,address)
values
(789,'dfdafgragth'),
(789,'asdfghjkluy');

;_________________________________________
create table medicine_orders(
 medicine_code int primary key,
 name_medicine varchar(50) not null,
 quantity int not null,
 price int not null,
 doctor_id int,
 operation_date date not null,
 operation_time time  not null,
 customer_name varchar (50),
 total_price int ,
 );
 
 insert into medicine_orders
 ( medicine_code,name_medicine,quantity,price,doctor_id,operation_date ,operation_time,customer_name,total_price)
 values
 (1,'nbjgbu',50,58,5,6/2/2011,'8:14','majed',700);
 (2,'mnlikn',65,73,7,2/7/2004,'9:14','olaa',400),
 (3,'klhnmn',21,80,50,1/4/2014,'5:17','hosny',450),
 (4,'vbngfnt',72,740,4,2/6/2013,'2:03','samir',632),
 (5,'xgfcjhf',34,74,3,2/12/2020,'4:07','rana',753);
 
 --_______________________________
 create table stores(
 stores_id int primary key,
 num_of_tool int not null,
 hardware_name varchar(50),
 total_cost int ,
 );
 
 insert into stores
 (stores_id,num_of_tool,hardware_name,total_cost)
 values
 (2,54,'oxgun tup',41),
 (1,32,'lab tools',45),
 (3,32,'sonar',74),
 (5,65,'heart rate monitor',47),
 (4,65,'pressure device',42);
 
 ;__________________________________________
 create table accountant(
national_id int primary key,
gender varchar (30),
birth_date date,
e_mail varchar (40),
nationality varchar(41),
phone varchar(15) unique,
);


insert into accountant
(national_id,gender,e_mail,nationality,phone)
values
(789,'male',4/2/2000,'mbZAQWSb.bj.jb.','Egyptian','21563165745'),
(790,'male',4/2/2000,'mbjkbkkkb.bj.jb.','Egyptian','21561235745'),
(714,'female',4/2/2000,'mbNBBVCb.bj.jb.','Kuwaiti','21563161471'),
(774,'male',4/2/2000,'mjuikBVCb.bj.jb.','Egyptian','2157412551471'),
(723,'female',4/2/2000,'masdfVCb.bj.jb.','Kuwaiti','21452331471');


create table add_acc(
emp_id int references  accountant(national_id),
address varchar(30) not null, );

insert into add_acc
(emp_id,address)
values
(789,'dfdafgragth'),
(789,'asdfghjkluy');

;_________________________________________
create table TbDoctors
(Doc_id int primary key,
frist_name nvarchar(100) not null ,
last_name nvarchar(100)not null,
gendre nvarchar(100),
e_mail nvarchar(100),
nationality nvarchar(100),
birth_date date,
salary money not null,
specialization nvarchar(100)not null,
doc_cv image
  );
  
insert into TbDoctors values
(110,'ahmed','ali','male','ahmed@yahoo.com','egyptien','20/11/1980',1500$,'Ã—«Õ…'),
(111,'mohammed','ali','male','mohammed@yahoo.com','egyptien','18/7/1960',3500$,'»«ÿ‰…'),
(112,'amira','adham','female','amira@yahoo.com','egyptien','2/11/1975',1200$,'„Œ Ê√⁄’«»'),
(113,'yara','hussein','male','yara@yahoo.com','egyptien','20/11/1980',1500$,'Ã·œÌ…'),
(114,'wafaa','sayed','female','wafaa@yahoo.com','egyptien','20/11/1977',1900$,'√ÿ›«·')  
  
create table TbDoctor_phone(
Doc_id int,
Doc_phone nvarchar(100)
);  

insert into TbDoctor_phone values
(113,'01124587639'),
(110,'0112487563'),
(112,'012148756'),
(113,'0124785963'),
(114,'010254789')


create table TbDoctor_address(
Doc_id int,
Doc_address nvarchar(100)
); 

insert into TbDoctor_address values
(110,'luxor'),
(112,'qena'),
(111,'cairo'),
(113,'luxor'),
(110,'sohag')

 ;__________________________________________________
create table TbNurses
(Nur_id int primary key,
 doc_id int ,
frist_name nvarchar(100)not null,
last_name nvarchar(100)not null,
gendre nvarchar(100),
e_mail nvarchar(100),
nationality nvarchar(100),
birth_date date,
salary int not null,
specialization nvarchar(100)not null,
Nur_cv image , 
constraint nurse_fk foreign key(doc_id)
references TbDoctors(doc_id) 
);


insert into TbNurses values
(210,111,'adham','ali','male','adham@yahoo.com','egyptien','20/11/1980',1500$,'»«ÿ‰…'),
(211,110,'yasser','adam','male','yasser@yahoo.com','egyptien','20/11/1980',1500$,'Ã—«Õ…'),
(212,113,'ashraf','mohsen','male','ashraf@yahoo.com','egyptien','20/11/1980',1500$,'√ÿ›«·'),
(213,112,'mona','ali','female','mona@yahoo.com','egyptien','20/11/1980',1500$,'„Œ Ê√⁄’«»'),
(214,110,'yasmeen','ahmed','female','yasmeen@yahoo.com','egyptien','20/11/1980',1500$,'Ã·œÌ…')


create table TbNurse_address(
Nur_id int,
Nur_address nvarchar(100)

);  
insert into TbNurse_address values
(211,'luxor'),
(210,'sohag'),
(214,'cairo'),
(213,'luxor'),
(210,'assuit')

create table TbNurse_phone(
Nur_id int,
Nur_phone nvarchar(100)
); 
insert into TbNurse_address values
(210,'011251489'),
(213,'012547896'),
(211,'010245879'),
(210,'012458739'),
(212,'01141852353')
;_____________________________________________________
create table TbPatients
(Patient_id int primary key,
doc_id int not null ,
nurse_id int not null,
receptionist_id int not null,
frist_name nvarchar(100)not null,
last_name nvarchar(100)not null,
gendre nvarchar(100),
e_mail nvarchar(100),
nationality nvarchar(100),
 birth_date date,
 medical_file image,
 constraint patient1_fk foreign key(doc_id)
references TbDoctors(doc_id) , 
constraint patient2_fk foreign key(nurse_id)
references TbNurses(Nur_id) , 
constraint patient3_fk foreign key(receptionist_id)
references TbStaff_reception(receptionist_id)
 );
 
 





insert into TbPatients values
(310,110,211,'ahmed','ali','male','ahmed@yahoo.com','egyptien','20/11/1980'),
(311,112,210,'amjad','hossam','male','amjed@yahoo.com','egyptien','20/11/1980'),
(312,114,213,'akram','ali','male','akram@yahoo.com','egyptien','20/11/1980'),
(313,111,212,'yasser','moaz','male','yasser@yahoo.com','egyptien','20/11/1980'),
(314,110,211,'omnia','ali','female','omnia@yahoo.com','egyptien','20/11/1980')

create table TbPatient_phone
(
Patient_id int,
Patient_phone nvarchar(100)
); 

insert into TbPatients_phone values
(311,'0112487578'),
(310,'01254793'),
(314,'012365479'),
(311,'012365944'),
(313,'012987364')


create table TbPatient_address(
Patient_id int,
Patient_address nvarchar(100)
); 

insert into TbPatients_address values
(310,'qena'),
(311,'teba'),
(312,'matroh'),
(314,'cairo'),
(313,'sohag')


;______________________________________________________
create table TbPharmacist
(id int primary key,
frist_name nvarchar(100)not null,
last_name nvarchar(100)not null,
gendre nvarchar(100),
e_mail nvarchar(100),
nationality nvarchar(100),
birth_date date,
salary money not null,
phar_cv image );



create table TbPharmacist_phone
(
Pharmacist_id int,
Pharmacist_phone nvarchar(100)
);

;_________________________________________________
insert into TbPharmacist_phone values
(411,'0124573941'),
(413,'0114573941'),
(411,'01045748761'),
(410,'01241639941')


create table TbPharmacist_address
(
Pharmacist_id int,
Pharmacist_address nvarchar(100)
);

insert into TbPharmacist_address values
(410,'qena'),
(411,'teba'),
(412,'matroh'),
(414,'cairo'),
(413,'sohag')

;__________________________________________________

create table TbRays
(
ray_id int primary key,
 name nvarchar(150),
 price money,
 ray_image image 
);

insert into TbRays values
(810,'fouad',120),
(811,'morad',182),
(812,'zain',720),
(813,'ramy',512)

;________________________________________________

create table TbStaff_reception
(
receptionist_id int primary key,
frist_name nvarchar(100)not null,
last_name nvarchar(100)not null,
gendre nvarchar(100),
e_mail nvarchar(100),
nationality nvarchar(100),
birth_date date,
salary money not null,
address nvarchar(50),
role nvarchar(50)
);

insert into TbStaff_reception values
(510,'ahmed','ali','male','ahmed@yahoo.com','egyptien','9/11/1980',1500$),
(511,'ashraf','mohsen','male','ashraf@yahoo.com','egyptien','20/11/1980',1500$),
(512,'ashraf','ayman','male','ashraf@yahoo.com','egyptien','2/11/1980',1500$),
(513,'adam','marawan','male','ashraf@yahoo.com','egyptien','7/11/1980',1500$)




create table Tbreceptionist_phone
(
receptionist_id int,
receptionist_phone nvarchar(100)
);

insert into Tbreceptionist_phone values
(511,'0124573941'),
(513,'0114573941'),
(511,'01045748761'),
(510,'01241639941')


create table Tbproducts
(
 pro_id int primary key,
 sup_id int,
 name varchar(50) not null,
 quantity int not null,
 price money not null,
  
constraint product_fk foreign key(sup_id)
references TbSuppliers(sup_id)  
 
  );
  insert into Tbproducts values 
(610,711,'computer', 500 ,1500$),
(611,712,'alarm device'  , 123,1900$),
(612,710,'security cameras'  ,147 ,720$),
(613,713,'printer',1236  ,150$) 
 


 
create table TbSuppliers
(
sup_id int primary key ,
name nvarchar(200) ,
manager_name nvarchar(200)
);
insert into TbSuppliers values 
(710,'MORAD','waleed' ),
(711,'ZAIN','kamel'),
(712,'wlaa','esraa'),
(713,'olaa','asmaa')
;___________________
