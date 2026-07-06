# Business Recommendation — Sales Performance Analysis

## Ringkasan Angka Kunci

| Metrik | Nilai |
|---|---|
| Total Sales | **Rp 1.754.750,57** (dalam satuan mata uang dataset) |
| Total Qty Terjual | **11.654 unit** |
| Jumlah Kategori Produk | 7 kategori |
| Jumlah Kota Pelanggan | 361 kota |

## Insight #1 — Kesenjangan antara Volume dan Value

| Kategori | Rank Sales | Rank Qty |
|---|---|---|
| Robots | **#1** (Rp 743.505) | #5 |
| eBooks | #6 | **#1** (3.123 unit) |
| Training Videos | #5 | **#2** (2.081 unit) |

**Insight:** Kategori **Robots** menyumbang porsi terbesar total sales meski volume
unit terjualnya relatif rendah — ini produk **high-value, low-volume** (harga satuan
mahal). Sebaliknya, **eBooks** & **Training Videos** adalah produk **low-value,
high-volume** (murah tapi laris).

**Rekomendasi:**
1. **Cross-sell / bundling**: Tawarkan Training Video atau eBook terkait sebagai
   produk pelengkap saat pelanggan membeli Robot/Drone — mendorong average order
   value (AOV) naik tanpa menurunkan harga produk utama.
2. **Upsell dari produk low-value**: Karena eBooks & Training Videos punya basis
   pembeli besar (volume tinggi), gunakan data pembeli ini untuk retargeting/email
   campaign menawarkan produk kategori Robots/Drones dengan diskon perkenalan.
3. **Jaga margin di kategori premium**: Karena Robots & Drones adalah kontributor
   sales terbesar, prioritaskan ketersediaan stok dan kualitas layanan purna jual
   untuk kategori ini.

## Insight #2 — Konsentrasi Geografis Pelanggan

Top 5 kota dengan sales tertinggi: Washington, Houston, Sacramento, San Diego, Albany
— dan kelimanya juga masuk top kota dari segi qty. Ini menunjukkan **demand yang
solid dan konsisten** di kota-kota tersebut (bukan cuma sales tinggi karena 1-2
transaksi besar, tapi memang volume transaksinya juga besar).

**Rekomendasi:**
1. **Perkuat kota-kota top** dengan program loyalitas/reward khusus pelanggan
   setia di Washington, Houston, Sacramento — retensi pelanggan existing biasanya
   lebih murah daripada akuisisi baru.
2. **Ekspansi bertarget** ke kota-kota dengan profil demografis mirip 5 kota top
   (misal kota besar dengan tingkat urbanisasi tinggi), karena polanya sudah
   terbukti berhasil di kota-kota tersebut.
3. **Analisis lanjutan** (di luar scope data saat ini): tambahkan data biaya
   logistik per kota untuk memastikan margin tetap positif saat ekspansi.

## Insight #3 — Diversifikasi Kategori

Dengan 7 kategori produk yang kontribusinya cukup bervariasi, ada peluang untuk:
1. **Analisis produk yang underperform** (kategori dengan sales & qty rendah)
   untuk keputusan discontinue atau reposisi harga.
2. **Musiman/tren**: lakukan analisis time-series lanjutan (breakdown per bulan)
   untuk melihat apakah ada pola musiman pada kategori tertentu, sehingga stok &
   campaign bisa direncanakan lebih matang.

## Batasan Analisis

Rekomendasi di atas berbasis data transaksi historis (Orders, Customers, Products,
ProductCategory) tanpa data biaya (cost of goods), margin, maupun data perilaku
pelanggan dari waktu ke waktu (retensi/churn). Untuk keputusan bisnis yang lebih
tajam, disarankan melengkapi dengan data tersebut di iterasi analisis berikutnya.

