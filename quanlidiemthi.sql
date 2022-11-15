CREATE DATABASE QuanlyDiemThi;
use QuanlyDiemThi;
create table hocsinh(
mahs varchar(20) primary key,
tenhs varchar(50),
ngaysinh datetime,
lop varchar(50),
gt varchar(20)
);
create table monhoc(
MaMH varchar (20) primary key,
TenMH varchar (50)

);
create table bangdiem(
MaHS varchar (20),
MaMH varchar (20),
DiemThi int ,
NgayKT datetime,
foreign key (MaHS) references hocsinh(MaHS),
foreign key (MaMH) references monhoc(MaMH)
);
CREATE TABLE GiaoVien(
    MaGV VARCHAR(20) PRIMARY KEY,
    TenGV VARCHAR(20),
    SDT VARCHAR(10)
    );
    ALTER TABLE MonHoc ADD MaGV VARCHAR(20);
ALTER TABLE MonHoc ADD CONSTRAINT FK_MaGV FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV);

