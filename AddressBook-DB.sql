create database AddressBookService;

use AddressBookService;

create table AddressBook(
id int identity (1,1) primary key,
FirstName varchar(30),
LastName varchar(30),
Address varchar(50),
City varchar(20),
State varchar(20),
ZipCode int,
Phone varchar,
Email varchar(50),
);

-- Viewing all the table in databse
select * from AddressBook 

-- Inserting record in the table in the form of rows and coloumns
insert into AddressBook values('PushPanjali', 'Manjrot', 'D12 Gurugram', 'Delhi', 'Delhi', 411001, 7544965650,'abc@gmail.com') 
insert into AddressBook values('Harsh', 'Singh', 'D11/25 New Gate', 'Gorakhpur', 'U.P', 786501, 7545855474,'def@gmail.com')
insert into AddressBook values('Muskan', 'Anand', '122/9 Boring Road', 'Patna', 'Bihar', 825561, 7673215474,'ghi@gmail.com')
insert into AddressBook values('Abhsihek', 'Kumar', '78/4 Kothrud', 'Pune', 'Maharastra', 440411, 7673210274,'ssi@gmail.com')
insert into AddressBook values('Surbhi', 'Raj', '85/4 Ring Road', 'Ranchi', 'Jharkhand', 824451, 7673215454,'kki@gmail.com')
insert into AddressBook values('Robert', 'Thomas', '892/1 Thomas Road ', 'Panji', 'Goa', 635561, 7673214545,'ddi@gmail.com')


-- Update Contact with Name
Update AddressBook set FirstName = 'Anish' where FirstName = 'Abhsihek' 

-- Delete Particular Data
Delete from AddressBook Where FirstName = 'Robert' 

-- Ability to search person from State and City
select * from AddressBook where City='Pune';
select * from AddressBook where State='Delhi';

-- ability to count Number of city and the employees from each city 
select count (City) as NumberOfCity from AddressBook;
select count (City) as NumberOfEmployee, City  from AddressBook  group by City;

-- Ability to sort Alphabetically
select * from AddressBook where City = 'Patna' order by (FirstName) ;
select * from AddressBook order by City, FirstName;

-- Adding coloums to database
Alter table AddressBook Add Family varchar(20),Friends varchar(20), Profession varchar(50);

-- counting No. of data in databse
select count (FirstName) as NumberOfContactPerson from AddressBook;

-- updating
UPDATE AddressBook set Family = 'yes' where FirstName='Anish' ;
UPDATE AddressBook set Friends = 'yes' where FirstName='PushPanjali' ;


create table Contact (id int identity (1,1) primary key, CityName varchar(20))
select * from Contact

Alter table AddressBook Add CityId int foreign key references Contact(id);

insert into Contact values ('Mumbai')
insert into Contact values ('Banaras')