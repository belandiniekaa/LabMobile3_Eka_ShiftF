# Tugas Pertemuan 2

**Nama**  : Eka Belandini  
**NIM**   : H1D022002  
**Shift** : F


## Deskripsi Proyek

Proyek ini merupakan aplikasi mobile sederhana yang dibangun menggunakan Flutter. Aplikasi ini memiliki fitur navigasi menggunakan menu samping (sidemenu) dan menyimpan preferensi pengguna menggunakan Shared Preferences. Desain aplikasi ini menggunakan skema warna pastel yang menawan, dengan fokus pada nuansa pink soft untuk menciptakan pengalaman pengguna yang nyaman dan menyenangkan.

## Penjelasan File dan Struktur Kode
### Penjelasan File

- **main.dart**: Berisi kode utama aplikasi dan pengaturan routing.
- **sidemenu.dart**: Kode untuk membuat menu samping yang dapat dinavigasi oleh pengguna.
- **home_page.dart**: Halaman yang ditampilkan setelah pengguna berhasil login, menyapa pengguna dengan nama mereka.
- **login_page.dart**: Halaman untuk proses login pengguna.
- **about_page.dart**: Halaman yang berisi informasi tentang aplikasi.

### Penjelasan Struktur Kode
#### 1. **main.dart**
   - **`runApp(const MyApp());`**: Memulai aplikasi Flutter dengan widget `MyApp`.
   - **`MaterialApp`**: Menyediakan pengaturan tema dan navigasi untuk aplikasi. 
     - **`theme`**: Menentukan warna utama aplikasi dan tema teks.
     - **`initialRoute`**: Menentukan rute awal yang ditampilkan saat aplikasi dimulai.
     - **`routes`**: Mendefinisikan rute untuk halaman `Login`, `Home`, dan `About`.

#### 2. **sidemenu.dart**
   - **`Drawer`**: Widget untuk membuat menu samping yang bisa ditarik.
   - **`ListView`**: Menyediakan daftar item menu.
   - **`_buildMenuItem`**: Fungsi untuk membangun item menu dengan efek responsif saat ditekan.
     - **`InkWell`**: Menangani interaksi pengguna, seperti klik pada item menu.
     - **`Navigator.pushReplacementNamed`**: Menavigasi pengguna ke rute yang ditentukan ketika item menu diklik.

#### 3. **home_page.dart**
   - **`_loadUsername()`**: Mengambil nama pengguna dari `SharedPreferences` untuk menyapa pengguna di halaman utama.
   - **`initState()`**: Memanggil `_loadUsername` saat halaman diinisialisasi.
   - **`Scaffold`**: Struktur dasar untuk halaman, termasuk `AppBar` dan `body`.
   - **`Container`**: Menyediakan tampilan yang lebih menarik dengan penempatan emoji dan teks sambutan.

#### 4. **login_page.dart**
   - **`TextField`**: Digunakan untuk input username dan password.
   - **`ElevatedButton`**: Tombol untuk memicu proses login.
   - **`SharedPreferences`**: Menyimpan nama pengguna setelah login berhasil agar dapat ditampilkan di halaman utama.
   - **`Navigator.pushReplacementNamed`**: Menavigasi pengguna ke halaman utama setelah login sukses.

#### 5. **about_page.dart**
   - **`Center`**: Mengatur tampilan informasi aplikasi di tengah halaman.
   - **`Text`**: Menyediakan deskripsi tentang aplikasi, menjelaskan tujuannya dan manfaatnya bagi pengguna.

## Demo Aplikasi

Berikut adalah beberapa screenshot dari aplikasi yang menunjukkan tampilan dan fitur yang ada:

### Screenshot Halaman Login
<img src="Screenshot2024-09-26235245.png" alt="Screenshot Halaman Login" width="200"/>

### Screenshot Login Berhasil
<img src="Screenshot2024-09-26235309.png" alt="Screenshot Login Berhasil" width="200"/>

### Screenshot Halaman Utama
<img src="Screenshot2024-09-26235333.png" alt="Screenshot Halaman Utama" width="200"/>

### Screenshot Sidemenu
<img src="Screenshot2024-09-26235347.png" alt="Screenshot Sidemenu" width="200"/>

### Screenshot Halaman About
<img src="Screenshot2024-09-26235412.png" alt="Screenshot Halaman About" width="200"/>

## Cara Menjalankan Aplikasi

1. **Instalasi Flutter**: Pastikan Anda sudah menginstal Flutter di komputer Anda. Jika belum, ikuti petunjuk di [dokumentasi resmi Flutter](https://flutter.dev/docs/get-started/install).
2. **Clone Repository**: Clone repository ini dengan perintah berikut:
   ```bash
   git clone <URL_REPOSITORY>
