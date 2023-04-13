CREATE DATABASE QUANLYGIANGDAY
USE QUANLYGIANGDAY
CREATE TABLE Khoa (
  MaKhoa INT PRIMARY KEY,
  TenKhoa NVARCHAR(50),
  NgayThanhLap DATE,
  TruongKhoa NVARCHAR(50)
);

CREATE TABLE GiaoVien (
  MaGV INT PRIMARY KEY,
  HoTen NVARCHAR(50),
  GioiTinh NVARCHAR(5),
  HocVi NVARCHAR(50),
  NgayVaoLam DATE,
  HeSo FLOAT,
  MucLuong FLOAT,
  MaKhoa INT,
  FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa)
);

CREATE TABLE MonHoc (
  MaMonHoc INT PRIMARY KEY,
  TenMonHoc NVARCHAR(50),
  SoTCLT INT,
  SoTCTH INT,
  MaKhoa INT,
  FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa)
);

CREATE TABLE GiangDay (
  Lop NVARCHAR(50),
  MaMonHoc INT,
  MaGV INT,
  HocKy NVARCHAR(20),
  Nam INT,
  TuNgay DATE,
  DenNgay DATE,
  PRIMARY KEY (Lop, MaMonHoc, MaGV, HocKy, Nam),
  FOREIGN KEY (MaMonHoc) REFERENCES MonHoc(MaMonHoc),
  FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV)
);
