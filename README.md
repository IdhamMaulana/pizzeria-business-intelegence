# 🍕 Pizzeria Business Intelligence: SQL & Dashboard Project
Relational Database Design, SQL Analysis, and Interactive Business Dashboard

## 📓 SQL Scripts & Resources
- [`Priority_Customer_Transaction_Monitoring.ipynb`](Priority_Customer_Transaction_Monitoring.ipynb)  

Berisi seluruh kueri SQL yang digunakan untuk ekstraksi data, mulai dari kalkulasi total penjualan, manajemen stok (inventory), hingga perhitungan biaya staf.

## 🧭 Business Context
Ben sedang mengembangkan bisnis pizzeria dengan model takeout & delivery. Seiring dengan pertumbuhan operasional, Ben membutuhkan sistem backend yang terstruktur untuk mencatat seluruh aktivitas transaksi, serta sistem monitoring berbasis dashboard untuk memantau performa bisnis secara real-time.

Project ini berfokus pada pembangunan data pipeline end-to-end, mulai dari database ter-normalisasi hingga dashboard analitik, dengan tiga area utama:

1. 📊 Dashboard 1 : Order Activity
Berfokus pada analisis performa penjualan dan perilaku pelanggan.

- Total orders
- Total sales
- Total items sold
- Average order value (AOV)
- Sales by category
- Top selling items
- Orders by hour
- Sales by hour
- Orders by location (address)
- Orders by fulfillment type (delivery vs pickup)
     
2. 📦 Dashboard 2 : Inventory Management
Berfokus pada efisiensi penggunaan bahan baku dan pengendalian biaya.

- Total quantity usage per ingredient
- Total cost per ingredient
- Calculated cost per pizza
- Remaining stock per ingredient
  
3. 👨‍🍳 Dashboard 3 : Staff Cost
 Berfokus pada analisis produktivitas dan biaya tenaga kerja.

- Total staff cost
- Total hours worked
- Hours worked per staff member
- Cost per staff member

## 🎯 Project Objective

Project ini bertujuan untuk:

1. Membangun database ter-normalisasi sebagai fondasi data yang terstruktur dan scalable
2. Mengembangkan dashboard analitik interaktif untuk memonitor KPI utama secara real-time
3. Menghasilkan insight berbasis data untuk mendukung pengambilan keputusan operasional dan strategis

## 📂 Data Overview
Dataset simulasi mencakup sistem relasional yang terdiri dari:

- Orders & Customers: Data transaksi, detail pelanggan, dan alamat pengiriman.
- Inventory & Recipe: Detail bahan baku setiap menu (resep) dan level stok di gudang.
- Staff & Shift: Informasi gaji per jam, jadwal kerja (rota), dan durasi shift.

Data telah melalui proses:
- Relational Mapping: Menentukan Primary Key dan Foreign Key antar tabel.

## 🔍 Analysis Approach
Pendekatan yang dilakukan dalam projek ini meliputi:

- Database Modeling: Merancang skema database menggunakan QuickDBD untuk memastikan integritas data.
- SQL Data Transformation: Menggunakan kueri kompleks (Joins, Subqueries, dan Aggregations) untuk menghitung metrik bisnis dari berbagai tabel.
- Stock Monitoring Logic: Mengalkulasi penggunaan bahan baku berdasarkan jumlah pesanan piza dikalikan dengan kuantitas resep.
- Labor Cost Calculation: Menghitung biaya staf dengan mengekstrak durasi waktu (jam/menit) dari data shift dan mengalikannya dengan tarif per jam.

## 💼 Business Impact
Dengan adanya sistem ini, Ben dapat memantau kesehatan finansial pizzerianya secara akurat. Pengawasan stok yang otomatis membantu mengurangi limbah makanan (food waste) dan memastikan ketersediaan bahan, sementara pemantauan biaya staf memberikan gambaran yang jelas mengenai efisiensi operasional harian.

## 📊 Dashboard
Hasil analisis divisualisasikan dalam dashboard interaktif (Looker Studio) yang terbagi menjadi tiga fokus utama:

Orders Dashboard: Fokus pada performa penjualan dan geografi pengiriman.
<img width="1136" height="854" alt="image" src="https://github.com/user-attachments/assets/9a189be9-d19d-4698-ae31-e201aed62cba" />


Inventory Dashboard: Fokus pada level stok dan kebutuhan reorder.
<img width="1136" height="851" alt="image" src="https://github.com/user-attachments/assets/50d9746d-d075-4f1e-9eaf-e4ab71c73841" />

Staff Dashboard: Fokus pada manajemen jadwal dan biaya tenaga kerja.
<img width="1136" height="856" alt="image" src="https://github.com/user-attachments/assets/53d00190-e64e-409e-94bd-63727753d6a7" />

## 🧰 Tools & Technologies
- QuickDBD: Untuk perancangan skema ERD (Entity Relationship Diagram).
- SQL (Big Query): Untuk manajemen database dan pengolahan data.
- Looker Studio: Untuk pembuatan dashboard interaktif.

## 📌 Note
Project ini merupakan hasil implementasi dari panduan Data Analyst Portfolio Project oleh Adam Finer. Seluruh data yang digunakan bersifat simulasi untuk keperluan demonstrasi kemampuan SQL-to-Dashboard pipeline.
