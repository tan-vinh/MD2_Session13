create database bt13_bai2_QuanLyBanHang;
create table Customer(
cID int(20) primary key auto_increment,
cName varchar(100) not null,
cAge int(20) not null
);
create table Orderr(
oID int(20) primary key auto_increment,
cID int(20) not null,
foreign key (cID) references Customer(cID),
oDate datetime not null,
oTotalPrice float not null
);
create table Product(
pID int(20) primary key auto_increment,
pName varchar(100) not null,
pPrice float not null
);
create table OrderDetail(
oID int(20) not null,
foreign key (oID) references Orderr(oID),
pID int(20) not null,
foreign key (pID) references Product(pID),
odQTY float not null
);