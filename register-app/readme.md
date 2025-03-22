# QA Registration System

## Pendahuluan 

Project ini adalah sistem registrasi pengguna berbasis PHP dengan database MySQL. Proyek ini mencakup fitur registrasi pengguna dengan validasi dan notifikasi.

## Instalasi

## 1. Clone Repository (Opsional)
Jika ingin mengkloning dari GitHub, jalankan perintah berikut:
```
    git clone https://github.com/username/repository.git
    cd repository
```

## 2. Setup Database
Buka MySQL dan buat database baru:
```
    CREATE DATABASE qa_registration;
```
Import struktur tabel menggunakan file qa_registration.sql:
```
    mysql -u root -p qa_registration < qa_registration.sql
```

## 3. Konfigurasi Koneksi Database
Edit file db_connect.php dan sesuaikan konfigurasi sesuai dengan database Anda:
```
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "qa_registration";
```