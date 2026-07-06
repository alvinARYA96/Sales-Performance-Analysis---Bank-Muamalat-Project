# Sales-Performance-Analysis---Bank-Muamalat-Project
Sales performance analysis &amp; interactive dashboard using SQL (BigQuery) and Looker Studio — completed as part of BI Analyst Virtual Internship at Bank Muamalat x Rakamin Academy.

[![SQL](https://img.shields.io/badge/SQL-BigQuery-4285F4?logo=googlebigquery&logoColor=white)](https://cloud.google.com/bigquery)
[![Dashboard](https://img.shields.io/badge/Dashboard-Looker%20Studio-4B0082?logo=looker&logoColor=white)](https://lookerstudio.google.com)
[![Status](https://img.shields.io/badge/status-completed-brightgreen)]()

## 📌 Overview

Project ini adalah studi kasus **Business Intelligence Analyst** untuk final project virtual based internship bank muamalat, menggunakan data transaksi penjualan e-commerce. Tugas mencakup **data modeling, transformasi data (SQL), visualisasi
dashboard, hingga rekomendasi bisnis** berbasis insight yang ditemukan.

Dikerjakan sebagai bagian dari **Virtual Internship Experience  Bank Muamalat**
yang diselenggarakan oleh **Rakamin Academy**.

## 🎯 Business Problem

Perusahaan memiliki data transaksi mentah tersebar di 4 tabel terpisah (Customer,
Products, Orders, ProductCategory) dan membutuhkan:
1. Pemahaman struktur & relasi data (data modeling)
2. Master table terkonsolidasi untuk kebutuhan reporting
3. Dashboard visual untuk monitoring performa penjualan
4. Rekomendasi strategi berbasis data untuk mempertahankan/menaikkan penjualan

## 🛠️ Tools & Skills

| Kategori | Tools/Skills |
|---|---|
| Data Warehouse | Google BigQuery |
| Query Language | SQL (JOIN, Aggregation, Regex) |
| Visualization | Looker Studio |
| Data Modeling | Star Schema, ERD |
| Analysis | Business Insight & Recommendation |

## 📂 Struktur Repository

```
Sales-Performance-Analysis---Bank-Muamalat-Project/
├── data/
│   ├── raw/                  -> dataset asli (Customers, Products, Orders, ProductCategory)
│   └── processed/             -> master_table_penjualan.csv (hasil transformasi)
├── sql/
│   ├── 01_primary_key_check.sql
│   └── 02_master_table.sql
├── dashboard/
│   └── README.md              -> link & dokumentasi dashboard Looker Studio
├── docs/
│   ├── data_modeling.md       -> penjelasan ERD & relationship
│   ├── business_recommendation.md
│   └── screenshots/
└── README.md                  -> file ini
```

## 🔍 Proses Analisis

### 1. Data Modeling
Mengidentifikasi primary key dan relationship dari 4 tabel yang membentuk
**star schema** (fact table: Orders, dimension table: Customers, Products,
ProductCategory). Detail lengkap: [`docs/data_modeling.md`](docs/data_modeling.md)

### 2. Data Transformation (SQL)
Menggabungkan 4 tabel menjadi 1 master table siap analisis menggunakan SQL di
BigQuery, termasuk pembersihan data (regex untuk memperbaiki format email yang kotor).
Detail lengkap: [`sql/02_master_table.sql`](sql/02_master_table.sql)

### 3. Dashboard
Dashboard interaktif menampilkan total sales, breakdown per kategori & kota,
serta top 5 performer. Lihat: [`dashboard/README.md`](dashboard/README.md)

### 4. Business Recommendation
Insight kunci: kategori **Robots** mendominasi total sales meski volume unit
rendah (produk high-value low-volume), sementara **eBooks** sebaliknya. Insight
lengkap & rekomendasi strategis: [`docs/business_recommendation.md`](docs/business_recommendation.md)

## 📈 Key Insights (Ringkas)

- 💰 Total Sales: **1.754.751**
- 📦 Total Qty Terjual: **11.654 unit**
- 🏆 Kategori kontribusi sales tertinggi: **Robots**
- 📚 Kategori volume terjual tertinggi: **eBooks**
- 🌆 Kota kontribusi sales tertinggi: **Washington**

## 🔗 Live Dashboard

👉 [Lihat Dashboard Interaktif di Looker Studio](https://datastudio.google.com/reporting/df440d53-1cb3-4eee-a6e4-7366457a184e)

## 🎥 Video Presentasi

👉 [Tonton penjelasan lengkap project ini](ISI-LINK-YOUTUBE/DRIVE-DI-SINI)

## 👤 Author

**Alvin Arya Pangestu**
Fresh Graduate — Informatika, Universitas Darussalam Gontor
[LinkedIn](https://www.linkedin.com/in/alvinaryapangestu) 

---
*Project ini dibuat sebagai bagian dari Virtual Internship Experience (VIX)
Bank Muamalat melalui Rakamin Academy.*
