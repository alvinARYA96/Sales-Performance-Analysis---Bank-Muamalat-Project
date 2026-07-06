-- TUJUAN: Menggabungkan 4 tabel (star schema) menjadi 1 master table
--         berisi detail transaksi penjualan, diurutkan dari tanggal
--         transaksi paling awal ke paling akhir.
-- ============================================================

SELECT
  o.Date AS order_date,
  pc.CategoryName AS category_name,
  p.ProdName AS product_name,
  p.Price AS product_price,
  o.Quantity AS order_qty,
  ROUND(o.Quantity * p.Price, 2) AS total_sales,
  REGEXP_EXTRACT(c.CustomerEmail, r'^[^#]+') AS cust_email,
  c.CustomerCity AS cust_city
FROM `bank_muamalat_task.orders` o
JOIN `bank_muamalat_task.customers` c
  ON o.CustomerID = c.CustomerID
JOIN `bank_muamalat_task.products` p
  ON o.ProdNumber = p.ProdNumber
JOIN `bank_muamalat_task.productcategory` pc
  ON p.Category = pc.CategoryID
ORDER BY o.Date ASC;
