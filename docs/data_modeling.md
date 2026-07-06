# Data Modeling & Entity Relationship

## 1. Skema Dataset

Dataset terdiri dari 4 tabel bertipe **star schema**, dengan `Orders` sebagai fact table
dan tiga tabel lainnya sebagai dimension table.

| Tabel | Kolom | Primary Key |
|---|---|---|
| **Customers** | CustomerID, FirstName, LastName, CustomerEmail, CustomerPhone, CustomerAddress, CustomerCity, CustomerState, CustomerZip | `CustomerID` |
| **Products** | ProdNumber, ProdName, Category, Price | `ProdNumber` |
| **Orders** | OrderID, Date, CustomerID, ProdNumber, Quantity | `OrderID` |
| **ProductCategory** | CategoryID, CategoryName, CategoryAbbreviation | `CategoryID` |

## 2. Relationship Antar Tabel

```
Customers (1) ────────< (N) Orders (N) >──────── (1) Products (N) >──── (1) ProductCategory
     CustomerID            CustomerID   ProdNumber      ProdNumber        Category = CategoryID
```

- **Customers → Orders**: One-to-Many. Satu customer bisa melakukan banyak order,
  dihubungkan lewat `Orders.CustomerID = Customers.CustomerID`.
- **Products → Orders**: One-to-Many. Satu produk bisa muncul di banyak order,
  dihubungkan lewat `Orders.ProdNumber = Products.ProdNumber`.
- **ProductCategory → Products**: One-to-Many. Satu kategori bisa menaungi banyak produk,
  dihubungkan lewat `Products.Category = ProductCategory.CategoryID`.

## 3. Diagram ERD (visual)

> Simpan screenshot ERD (misal dari draw.io, dbdiagram.io, atau BigQuery relationship view)
> di `docs/screenshots/erd.png` lalu tampilkan di sini:
>
> ![ERD](screenshots/erd.png)

## 4. Kesimpulan

Model data ini adalah **star schema** klasik untuk kasus analitik penjualan:
- Fact table (`Orders`) menyimpan transaksi granular (level baris = 1 order item)
- Dimension table menyimpan atribut deskriptif (siapa customer-nya, apa produknya, kategori apa)

Struktur ini memudahkan agregasi (SUM sales, COUNT qty) dikelompokkan berdasarkan
dimensi apapun (kota, kategori, produk, tanggal) — inilah alasan kenapa kita bisa
langsung bikin dashboard di Bagian 4 tanpa restrukturisasi data lebih lanjut.

