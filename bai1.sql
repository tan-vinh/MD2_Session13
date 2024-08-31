create database bt13_bai1;
create table vatTu(
maVT int(20) primary key auto_increment,
tenVT varchar(100) not null unique
);
create table phieuXuatChiTiet(
soPX int(20) not null,
foreign key (soPX) references phieuXuat(soPX),
maVT int(20) not null,
foreign key (maVT) references vatTu(maVT),
donGiaXuat float not null,
soLuongXuat int(100)  not null
);
create table phieuXuat(
soPX int(20) primary key auto_increment,
ngayXuat datetime not null
);
create table phieuNhap(
soPN int(20) primary key auto_increment,
ngayNhap datetime not null
);
create table phieuNhapChiTiet(
soPN int(20) not null,
foreign key (soPN) references phieuNhap(soPN),
maVT int(20) not null,
foreign key (maVT) references vatTu(maVT),
donGiaNhap float not null,
soLuongNhap int(100)  not null
);
create table chiTietDonHang(
maVT int(20) not null,
foreign key (maVT) references vatTu(maVT),
soDH int(20) not null,
foreign key (soDH) references donDatHang(soDH)
);
create table donDatHang(
soDH int(20) primary key auto_increment,
ngayDH datetime not null,
maNCC int(20) not null,
foreign key (maNCC) references nhaCungCap(maNCC)
);
create table nhaCungCap(
maNCC int(20) primary key auto_increment,
tenNCC varchar(100) not null unique,
diaChi varchar(100) not null,
soDienThoai varchar(10) not null
);