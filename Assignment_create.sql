-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-07-04 15:16:33.525

-- tables
-- Table: ACCOUNTS
CREATE TABLE ACCOUNTS (
    Username nvarchar(50)  NOT NULL,
    Password nvarchar(50)  NOT NULL,
    PHONGBAN_MaPB nvarchar(50)  NOT NULL,
    CONSTRAINT ACCOUNTS_pk PRIMARY KEY  (Username)
);

-- Table: NHANVIEN
CREATE TABLE NHANVIEN (
    MaNV int  NOT NULL,
    TenNV nvarchar(50)  NOT NULL,
    GioiTinh bit  NOT NULL,
    NgaySinh date  NOT NULL,
    ChucVu nvarchar(50)  NOT NULL,
    Email nvarchar(50)  NOT NULL,
    HinhAnh nvarchar(50)  NOT NULL,
    PHONGBAN_MaPB nvarchar(50)  NOT NULL,
    CONSTRAINT NHANVIEN_pk PRIMARY KEY  (MaNV)
);

-- Table: PHONGBAN
CREATE TABLE PHONGBAN (
    MaPB nvarchar(50)  NOT NULL,
    TenPB nvarchar(50)  NOT NULL,
    CONSTRAINT PHONGBAN_pk PRIMARY KEY  (MaPB)
);

-- foreign keys
-- Reference: ACCOUNTS_PHONGBAN (table: ACCOUNTS)
ALTER TABLE ACCOUNTS ADD CONSTRAINT ACCOUNTS_PHONGBAN
    FOREIGN KEY (PHONGBAN_MaPB)
    REFERENCES PHONGBAN (MaPB);

-- Reference: NHANVIEN_PHONGBAN (table: NHANVIEN)
ALTER TABLE NHANVIEN ADD CONSTRAINT NHANVIEN_PHONGBAN
    FOREIGN KEY (PHONGBAN_MaPB)
    REFERENCES PHONGBAN (MaPB);

-- End of file.

