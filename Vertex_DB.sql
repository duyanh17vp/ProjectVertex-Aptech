create database Vertex;

create table Virus(
	VirusID	char(12) not null,
	VirusName char(50) not null,
	YearBegin int ,
	YearEnd int ,
	VirusType char(50) ,
	PreHumanHost char(100) ,
	DeathToll char(50) 
);
alter table Virus add constraint pk_Virus primary key(VirusID);


create table UserInfo(
	UserId char(12) not null,
	Name nvarchar(50),
	IdCard char(12),
	YearBirth int ,
	Gender int,
	Phone nvarchar(15),
	Email nvarchar(50),
	UserAddress nvarchar(200)
);
alter table UserInfo add constraint pk_UserInfo primary key(UserId);

create table UserAnswer01(
	UserId char(12) not null,
	Fever bit,
	Cough bit,
	ShortnessOfbreath bit,
	Pneumonia bit,
	SoreThroat bit,
	Tired bit
);
alter table UserAnswer01 add constraint pk_UserAnswer01 primary key(UserId);
alter table UserAnswer01 add constraint fk_UserAnswer01 foreign key (UserId) references UserInfo(UserId);

create table UserAnswer02(
	UserId char(12) not null,
	PeopleInfected bit,
	Foreigner bit,
	PeopleUnhealthy bit
);
alter table UserAnswer02 add constraint pk_UserAnswer02 primary key(UserId);
alter table UserAnswer02 add constraint fk_UserAnswer02 foreign key (UserId) references UserInfo(UserId);

create table UserAnswer03(
	UserId char(12) not null,
	ChronicLiver bit,
	ChronicBlood bit,
	ChronicLung bit,
	HeartRelated bit,
	HighBlood bit,
	HIV bit,
	Transplant bit,
	Diabetes bit,
	Cancer bit
);
alter table UserAnswer03 add constraint pk_UserAnswer03 primary key(UserId);
alter table UserAnswer03 add constraint fk_UserAnswer03 foreign key (UserId) references UserInfo(UserId);

insert into Virus values (0001,'Antonine Plague',165,180,'Believed to be either smallpox or measles',,'5000000' );
insert into Virus values (0002,'Japanese smallpox epidemic',735,737,'Variola major virus',,'1000000' );
insert into Virus values (0003,'Plague of Justinian',541,542,'Yersinia pestis bacteria','Rats, fleas','30-50M' );
insert into Virus values (0004,'Black Death',1347,1351,'Yersinia pestis bacteria','Rats, fleas','20M' );






































