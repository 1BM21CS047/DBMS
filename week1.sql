create database insurance;
use insurance;
create table person
( driver_id varchar(20), name varchar(20), address varchar(30), 
    primary key(driver_id) );
    
create table car
( reg_num varchar(20), model varchar(20), year int, 
  primary key(reg_num) );
  
create table owns
(  driver_id varchar(20), reg_num varchar(20),
   primary key(driver_id,reg_num),
   foreign key(driver_id) references person(driver_id),
   foreign key(reg_num) references car(reg_num)
   );
  
create table accident 
(  report_num int, accident_date date, location varchar(30),
    primary key(report_num) );
    
create table participated
( driver_id varchar(20),reg_num varchar(20),report_num int,damage_amount int,
  primary key(driver_id,reg_num,report_num),
  foreign key(driver_id) references person(driver_id),
  foreign key(reg_num) references car(reg_num),
  foreign key(report_num) references accident(report_num)
  );
  
insert into person value("A01","Richard","Srinivas Nagar");
insert into person value("A02","Pradeep","Rajaji Nagar");
insert into person value("A03","Smith","Ashok Nagar");
insert into person value("A04","Venu","NR Colony ");
insert into person value("A05","John","Hanumanth Nagar");

insert into car value("KA052250","Indica",1990);
insert into car value("KA031181","Lancer",1957);
insert into car value("KA095477","Toyota",1998);
insert into car value("KA053408","Honda",2008);
insert into car value("KA041702","Audi",2005);

insert into owns value("A01","KA052250");
insert into owns value("A02","KA031181");
insert into owns value("A03","KA095477");
insert into owns value("A04","KA053408");
insert into owns value("A05","KA041702");

insert into accident value(11,'2003-01-01',"Mysore Road");
insert into accident value(12,'2004-02-02',"South end Circle");
insert into accident value(13,'2003-01-21',"Bull temple Road");
insert into accident value(14,'2008-02-17',"Mysore Road");
insert into accident value(15,'2005-03-04',"Kanakpura Road");


insert into participated value("A01","KA052250",11,10000);
insert into participated value("A02","KA031181",12,50000);
insert into participated value("A03","KA095477",13,25000);
insert into participated value("A04","KA053408",14,3000);
insert into participated value("A05","KA041702",15,5000);

select * from person;
select * from car;
select * from owns;
select * from accident;
select * from participated;
