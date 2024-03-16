-- Create Database
CREATE DATABASE challenge3;

-- Create Table 
-- Table Nasabah
CREATE TABLE nasabah (
    id BIGSERIAL PRIMARY KEY,
    nama_lengkap VARCHAR(50) NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    no_telp VARCHAR(16) NOT NULL,
    gender VARCHAR(15) NOT NULL,
    pekerjaan VARCHAR(50) NOT NULL
);

-- Table Akun
CREATE TABLE akun (
    id BIGSERIAL PRIMARY KEY,
    email VARCHAR(50) NOT NULL,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(20) NOT NULL,
    no_rek VARCHAR(20) NOT NULL,
    pin VARCHAR(10) NOT NULL,
    saldo DECIMAL(15, 2) NOT NULL,
    nasabah_id INT NOT NULL
);

-- Table Transaksi
CREATE TABLE transaksi (
    id BIGSERIAL PRIMARY KEY,
    no_rek_tujuan VARCHAR(20) NOT NULL,
    nominal DECIMAL(15, 2) NOT NULL,
    tgl_transaksi DATE NOT NULL,
    keterangan VARCHAR(50) NOT NULL,
    akun_id INT NOT NULL
);

-- CRUD
-- Create Data Nasabah
INSERT INTO nasabah (nama_lengkap, alamat, no_telp, gender, pekerjaan) VALUES 
('Bagus Dwi Putra', 'Jl. Alam Pesona I, E2/27, Krian', '082229749462', 'Laki - Laki', 'Mahasiswa'),
('Andi Putra', 'Jl. Kedung Tarukan, 4B/33, Surabaya', '081764321900', 'Laki - Laki', 'Dokter'),
('Putri Permatasari', 'Jl. Melati Indah, G/21, Sidoarjo', '082176908821', 'Perempuan', 'Pramugari'),
('Joko Sembung', 'Jl. Menuju Surga', '081998420600', 'Laki - Laki', 'Siswa'),
('Siti Makaroni', 'Jl. Balai Pemuda, 21, Surabaya', '082229740940', 'Perempuan', 'Ibu Rumah Tangga');

-- Create Data Akun
INSERT INTO akun (email, username, password, no_rek, pin, saldo, nasabah_id) VALUES 
('sugab.dwi88@gmail.com', 'user1', 'password1', '1234567890', '111111', 5000000.00, 1),
('andiputra4@gmail.com', 'user2', 'password2', '2234567890', '222222', 780000.00, 2),
('putri1@gmail.com', 'user3', 'password3', '3234567890', '333333', 9250000.00, 3),
('jokosembung@gmail.com', 'user4', 'password4', '4234567890', '444444', 525000.00, 4),
('sitimakaroni10@gmail.com', 'user5', 'password5', '5234567890', '555555', 378000.00, 5),
('sugab.dwi99@gmail.com', 'user12', 'password1', '1234567891', '111111', 500000.00, 1),
('putri2@gmail.com', 'user32', 'password3', '3234567891', '333333', 2800000.00, 3),
('sitimakaroni20@gmail.com', 'user52', 'password5', '5234567891', '555555', 3000000.00, 5),
('sugab.dwi00@gmail.com', 'user13', 'password1', '1234567892', '111111', 2500000.00, 1);

-- Create Data Transaksi
INSERT INTO transaksi (no_rek_tujuan, nominal, tgl_transaksi, keterangan, akun_id) VALUES
('1111111111', 500000.00, '2024-03-16', 'Pembayaran tagihan listrik', 1),
('2222222222', 1000000.00, '2024-03-15', 'Top up saldo e-wallet', 1),
('3333333333', 250000.00, '2024-03-15', 'Pembayaran tagihan internet', 2),
('4444444444', 2000000.00, '2024-03-14', 'Transfer ke rekening teman', 3),
('5555555555', 150000.00, '2024-03-14', 'Pembelian pulsa', 4),
('6666666666', 300000.00, '2024-03-13', 'Top up saldo game online', 5),
('7777777777', 100000.00, '2024-03-13', 'Pembayaran tagihan air', 5),
('8888888888', 500000.00, '2024-03-12', 'Pembayaran tagihan kartu kredit', 6),
('9999999999', 200000.00, '2024-03-12', 'Transfer ke rekening teman', 7),
('0000000000', 150000.00, '2024-03-11', 'Top up saldo e-wallet', 8);
