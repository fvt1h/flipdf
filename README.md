# FlipBaca

Pembaca PDF tanpa iklan dengan efek balik halaman, dibuat untuk iPad.

- Geser halaman dengan jari atau ketuk tombol panah besar
- 2 halaman saat iPad miring, 1 halaman saat tegak
- Slider dan lompat ke nomor halaman
- Zoom 100% sampai 300%
- Rak buku: PDF dan halaman terakhir disimpan di browser iPad (tidak diunggah ke mana pun)
- Dark mode mengikuti pengaturan iPad, halaman PDF tetap putih

## Isi folder

| File | Fungsi |
| --- | --- |
| `index.html` | Aplikasinya. Ini yang dibuka lewat GitHub Pages. |
| `.claude-artifact/index.html` | Versi untuk link claude.ai. Tidak dipakai GitHub Pages. |

## Pasang di GitHub Pages

1. Buat repository baru di GitHub, misalnya `flipdf`. Boleh **Public**. Kalau **Private**, GitHub Pages butuh akun berbayar.
2. Upload isi folder ini ke repository tersebut, atau lewat terminal:

   ```bash
   git init
   git add .
   git commit -m "FlipBaca"
   git branch -M main
   git remote add origin https://github.com/USERNAME/flipdf.git
   git push -u origin main
   ```

3. Di GitHub buka **Settings → Pages**.
4. Di **Source** pilih **Deploy from a branch**, branch **main**, folder **/ (root)**, lalu **Save**.
5. Tunggu 1–2 menit. Alamatnya: `https://USERNAME.github.io/flipdf/`

## Pakai di iPad

1. Buka alamat tadi di **Safari**.
2. Ketuk **Share → Add to Home Screen**. FlipBaca akan muncul seperti aplikasi, tanpa bilah alamat.
3. Ketuk **Buka PDF** dan pilih file dari app Files atau iCloud Drive.

Catatan:
- Butuh internet saat membuka FlipBaca (untuk memuat komponen pembaca PDF).
- Rak buku tersimpan per alamat web dan per browser. Kalau data Safari dihapus, rak ikut kosong. Buka ulang PDF-nya saja.
