# TUGAS 7
# Stateless widget dan stateful widget, serta perbedaannya
Stateless widget adalah widget yang tidak memiliki state, mereka tidak dapat berubah. Properti dan penampilannya akan tetap sama selama *lifetime*-nya. Contoh: Icon, IconButton, Text, dll.

Stateful widget adalah widget yang memiliki state, sehingga mereka dapat mengubah penampilannya sebagai respons terhadap *event* yang dipicu oleh interaksi pengguna atau ketika menerima data. Contoh: Checkbox, Radio Button, Slider, TextField, dll.

Perbedaan stateless dan stateful widget
Stateless widget:
- widget static
- tidak bergantung pada perubahan data atau perubahan perilaku apa pun
- tidak memiliki state, mereka akan dirender sekali dan mereka tidak akan berubah dengan sendirinya, tetapi akan berubah ketika data eksternal berubah

Stateful widget:
- widget dinamis
- dapat berubah selama runtime berdasarkan tindakan pengguna atau perubahan data
- memiliki state internal, mereka dapat dirender ulang jika data input berubah atau jika state widget berubah

# Widget yang digunakan di proyek tugas 7
- AppBar: komponen utama dari widget scaffold, digunakan untuk menampilkan widget toolbar, leading, title, dan action.
- Center: memposisikan widget *children* ke tengah *space* layar.
- Column: memposisikan widget *children* secara vertikal.
- FloatingActionButton : tombol ikon melingkar yang mengarah ke konten untuk mendorong tindakan yang terjadi di aplikasi.
- Icon : menampilkan icon tertentu pada aplikasi.
- MaterialApp: membungkus semua komponen dan widget yang biasanya diperlukan untuk desain material aplikasi.
- Positioned :  menempatkan widget di atas satu sama lain, biasanya digunakan untuk memposisikan *child* widget pada widget stack.
- Stack : berguna ketika ingin menumpang tindihkan beberapa *children*.
- Scaffold: menyediakan API untuk menampilkan *drawers* dan *bottom sheet*, serta digunakan untuk mengimplementasikan struktur layout fungsional dasar dari suatu aplikasi.
- TextStyle: membuat style pada teks.
- Theme: menambahkan tema ke aplikasi.
- Text: menampilkan string teks dengan *single style* pada aplikasi.

# setState()
setState() berguna untuk mengimformasikan framework Flutter bahwa status internal objek telah berubah  dan harus di build kembali. Fungsi setState() dapat dipanggil setiap ingin adanya perubahan dalam variabel ditampilkan pada layar UI, contohnya ketika tombol diklik, warna teks akan berubah. Pada tugas 7 ini, variabel `_counter` terdampak dengan fungsi setState(), ketika user menekan tombol plus, `_counter` akan bertambah dan setState() akan dipanggil kemudian menampilkan perubahan dalam variabel `_counter` pada layar UI, begitu juga ketika user menekan tombol minus.

# Perbedaan antara const dengan final
const:
- nilai harus diketahui saat compile-time
- secara internal bersifat final, tetapi perbedaanya adalah variabel yang diinisialisasikan selama compile-time akan memakan tempat di memory, bahkan jika ternyata tidak digunakan.

final:
- nilai harus diketahui saat run-time
- variabel final hanya bisa diset sekali dan diinisialisasi saat diakses.

# Mengimplementasikan checklist tugas
1. *Generate* proyek Flutter dengan perintah `flutter create counter_7`.
2. Membuka file main.dart yang ada pada folder lib .
3. Mengubah title homepage menjadi "Program Counter".
4. Menambahkan fungsi baru bernama `_decrementCounter` yang akan mengurangi `_counter` sebanyak 1, tetapi jika `_counter` kurang dari 0 maka tidak akan terjadi apa-apa.
5. Menambahkan statement if-else, jika `_counter` bernilai genap maka akan memunculkan text "GENAP" yang berwarna merah, sednagkan jika `_counter` bernilai ganjil makan akan menumculkan text "GANJIL" berwarna biru.
6. Menambahkan widget `floatingActionButton` yang di-*assign* dengan widget `stack` untuk memunculkan 2 floating button dengan icon *add* dan *remove*, kemudian menggunakan widget `positioned` sebagai childrennya.


# TUGAS 8
# Perbedaan Navigator.push dan Navigator.pushReplacement
 Navigator digunakan untuk mengganti halaman aplikasi dengan konsep stack. Perbedaan Navigator.push dengan Navigator.pushReplacement adalah halaman baru ditambahkan ke stack saat memanggil Navigator.push, sedangkan Navigator.pushReplacement akan mengganti halaman yang ada di bagian atas tumpukan dengan halaman baru. Contohnya, di stack terdapat page transition, jika memanggil Navigator.push, maka page 1 akan ditambah ke stack, jika memanggil Navigator.push lagi, maka page 2 akan ditambah ke stack, sehingga di stack akan terdapat 3 item, yaitu page transition, page 1, dan page 2. Sedangkan, jika memanggil Navigator.pushReplacement, maka page 1 akan diganti oleh page 2, sehingga di stack hanya akan terdapat 2 item, yaitu page transition dan page 2.
# Widget yang digunakan di proyek tugas 8
- AppBar: komponen utama dari widget scaffold, digunakan untuk menampilkan widget toolbar, leading, title, dan action.
- Center: memposisikan widget *children* ke tengah *space* layar.
- Column: memposisikan widget *children* secara vertikal.
- Container : digunakan untuk menyimpan 1 atau lebih widget dan menempatkannya di layar, container dapat diilustrasikan sebagai kotak yang berisi widget-widget.
- Card : membuat ruang atau panel dengan sudut yang membulat dan sedikit lebih tinggi di sisi bawah.
- DropDownButtonFormField : memungkinkan user untuk dapat memilih dari sejumlah item. Dropdown menunjukkan item yang sedang dipilih serta terdapat panah yang dapat membuka menu untuk memilih item lain.
- Drawer : digunakan untuk menyediakan akses ke berbagai tujuan dan fungsi yang disediakan di aplikasi. Drawer menampilkan serta mengarahkan tautan ke berbagai rute yang ada di aplikasi flutter.
- Form : digunakan untuk berinteraksi dengan aplikasi serta mengumpulkan informasi dari pengguna. Form dapat melakukan banyak tugas seperti autentikasi pengguna, menambahkan pengguna, mencari, memfilter, dll.
- FloatingActionButton : tombol ikon melingkar yang mengarah ke konten untuk mendorong tindakan yang terjadi di aplikasi.
- Icon : menampilkan icon tertentu pada aplikasi.
- ListTile : digunakan untuk mengisi ListView di Flutter, biasanya berisi judul serta ikon leading dan trailing.
- MaterialApp: membungkus semua komponen dan widget yang biasanya diperlukan untuk desain material aplikasi.
- Positioned :  menempatkan widget di atas satu sama lain, biasanya digunakan untuk memposisikan *child* widget pada widget stack.
- Padding : menambahkan padding atau ruang kosong di sekitar widget.
- Row : menyusun anak widget secara horizontal dan vertikal sesuai kebutuhan.
- Stack : berguna ketika ingin menumpang tindihkan beberapa *children*.
- Scaffold: menyediakan API untuk menampilkan *drawers* dan *bottom sheet*, serta digunakan untuk mengimplementasikan struktur layout fungsional dasar dari suatu aplikasi.
- SingleChildScrollView : dapat digunakan ketika ruang yang menampung widget tidak cukup besar, jadi widget-widgetnya ditampilkan dengan cara *scroll*.
- SizedBox :dapat digunakan untuk mengatur batasan ukuran ke widget anak.
- TextStyle: membuat style pada teks.
- TextButton : tombol yang mendengarkan gerakan onPressed() dan onLongPress().
- Theme: menambahkan tema ke aplikasi.
- Text: menampilkan string teks dengan *single style* pada aplikasi.

# Jenis-jenis event pada Flutter
- onPressed : event ketika widget ditekan
- onSaved : event ketika widget disimpan
- onEnter : event ketika pointer mouse enter suatu widget
- onExit : event ketika pointer mouse exit suatu widget
- onHover : event ketika pointer ke posisi widget tanpa menekannya
# Cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Sebagian besar app berisi beberapa layar untuk menampilkan berbagai jenis informasi. Misalnya, ada suatu aplikasi untuk menampilkan produk. Saat pengguna mengetuk gambar suatu produk, halaman baru akan keluar untuk menampilkan detail tentang produk tersebut. Disinilah fungsi navigator, yaitu untuk mengganti halaman. Navigator digunakan untuk mengganti halaman aplikasi dengan konsep stack. Navigator akan mengarahkan ke suatu halaman dengan Navigator.push() dan mengarahkannya kembali ke halaman semula dengan Navigator.pop().
# Mengimplementasikan checklist tugas
2. Menambah drawer pada file main.dart yang ada pada folder lib.
3. Membuat file baru bernama `tambahbudget.dart` dan `databudget.dart`.
4. Menambahkan drawer dan form pada `tambahbudget.dart` serta menambah elemen-elemen input, yaitu `_judulBudget`,` _tipeBudget`, dan `_budget`.
5. Menambahkan widget `Padding` untuk input judul dan nominal, `DropdownButtonFormField` untuk input jenis, dan `TextButton` untuk menyimpan data input.
6. Menambahkan drawer `databudget.dart` serta menambah constructor input, yaitu `judulBudget`,` tipeBudget`, dan `budget`.
7. Membuat fungsi addBudget yang akan menambahkan objek DataBudgetPage ke list budgets.
8. Menambah widget ListTile yang akan menampilkan judulBudget, tipeBudget, dan budget.
9. Melakukan add-commit-push ke GitHub.



# TUGAS 9
# Apakah bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Jawabannya adalah iya, kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu, yaitu dengan menggunakan `Serializing JSON inline`. Dalam membuat *network-connected apps*, kita akan memerlukan data JSON, terdapat 2 strategi dalam bekerja dengan data JSON, yaitu  `Manual Serilization` dan `Automated serialization using code generation`. Dalam `Manual Serilization`, Flutter memiliki library *built-in* yaitu `dart:convert`, dengan `dart:convert`, kita dapat men-*serialize* model JSON dengan 2 cara, yaitu `Serializing JSON inline` dan `Serializing JSON inside model classes`. Dengan `Serializing JSON inline`, kita tidak lagi perlu membuat model terlebih dahulu untuk pengambilan data JSON. Pada `Serializing JSON inline`, JSON akan di-*decode* dengan memanggil fungsi `jsonDecode()` yang menggunakan string JSON sebagai argumen dan akan mengembalikan Map < String, dynamic >, sehingga, kita tidak akan mengetahui tipe value sampai runtime. Kode yang dihasilkan akan lebih rawan error. Oleh karena itu akan lebih baik jika kita membuat model terlebih dahulu sebelum melakukan pengambilan data JSON, agar dapat mengetahui tipe value sebelum runtime.

# Widget yang digunakan di proyek tugas 9
- AppBar: komponen utama dari widget scaffold, digunakan untuk menampilkan widget toolbar, leading, title, dan action.
- Align : berfungsi untuk menyelaraskan *child* di dalam dirinya sendiri, align cukup fleksibel dan bisa diubah ukurannya sesuai dengan ukuran *child*-nya.
- BoxDecoration : memdeskripsikan bagaimana wujud sebuah box untuk ditampilkan di halaman flutter, seperti bordernya, colornya, shadownya, dll. 
- Center: memposisikan widget *children* ke tengah *space* layar.
- Column: memposisikan widget *children* secara vertikal.
- Container : digunakan untuk menyimpan 1 atau lebih widget dan menempatkannya di layar, container dapat diilustrasikan sebagai kotak yang berisi widget-widget.
- Drawer : digunakan untuk menyediakan akses ke berbagai tujuan dan fungsi yang disediakan di aplikasi. Drawer menampilkan serta mengarahkan tautan ke berbagai rute yang ada di aplikasi flutter.
- FloatingActionButton : tombol ikon melingkar yang mengarah ke konten untuk mendorong tindakan yang terjadi di aplikasi.
- FutureBuilder : digunakan untuk membuat widget berdasarkan snapshot interaksi terbaru dengan Future, FutureBuilder membantu dalam menjalankan beberapa fungsi asinkron dan berdasarkan hasil fungsi tersebut, UI akan diperbarui.
FutureBuilder pada dasarnya adalah Stateful yaitu mempertahankan statusnya sendiri seperti yang kami lakukan di StatefulWidgets.
- ListTile : digunakan untuk mengisi ListView di Flutter, biasanya berisi judul serta ikon leading dan trailing.
- ListView : berfungsi untuk menampilkan *children*-nya satu demi satu dalam arah gulir yaitu, vertikal atau horizontal.
- MaterialApp: membungkus semua komponen dan widget yang biasanya diperlukan untuk desain material aplikasi.
- Padding : menambahkan padding atau ruang kosong di sekitar widget.
- RichText : menampilkan teks yang menggunakan berbagai gaya yang berbeda-beda.
- Scaffold: menyediakan API untuk menampilkan *drawers* dan *bottom sheet*, serta digunakan untuk mengimplementasikan struktur layout fungsional dasar dari suatu aplikasi.
- SingleChildScrollView : dapat digunakan ketika ruang yang menampung widget tidak cukup besar, jadi widget-widgetnya ditampilkan dengan cara *scroll*.
- SizedBox :dapat digunakan untuk mengatur batasan ukuran ke widget anak.
- TextStyle: membuat style pada teks.
- Text: menampilkan string teks dengan *single style* pada aplikasi.
- TextSpan : merupakan rentang teks yang tidak dapat diubah, textspan memiliki properti style untuk memberi gaya pada teks dan properti *children* untuk menambahkan lebih banyak teks.
- CircularProgressIndicator : menunjukkan bahwa aplikasi sedang sibuk.

# Mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter
1. Menambahkan *package* http dengan melakukan `flutter pub add http` pada terminal proyek Flutter.
2. Menambahkan kode berikut pada file AndroidManifest.xml untuk memperbolehkan akses Internet pada aplikasi Flutter yang sedang dibuat.
```
...
    <application>
    ...
    </application>
    <!-- Required to fetch data from the Internet. -->
    <uses-permission android:name="android.permission.INTERNET" />
...
```
3. Membuat *network request* dengan menggunakan metode http.get(). Metode http.get() mengembalikan *Future* yang berisi Response. *Future* adalah *core* dari class Dart untuk bekerja dengan operasi async. Objek *Future* mewakili nilai atau kesalahan yang akan tersedia di masa mendatang. Sedangkan http.Response berisi data yang diterima dari panggilan http yang berhasil. Berikut adalah contoh kodenya.
```
content_copy
Future<http.Response> fetchAlbum() {
   kembalikan http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
}
```
4. Mengkonversi respons menjadi objek Dart khusus, agar mempermudah bekerja dengan data JSON. Kita dapat membuat objek dengan membuat class terlebih dahulu, class akan berisi data dari *network request*. 
5. Mengubah response body menjadi Peta JSON dengan package dart:convert.
```
 namaClass.fromJson(jsonDecode(response.body))
```
6. Memanggil fungsi fetchnamaClass().
7. Menampilkan data di layar flutter dengan menggunakan widget `FutureBuilder`. Widget FutureBuilder memudahkan untuk bekerja dengan sumber data asinkron.
```
FutureBuilder<namaClass>(
    future: fetchnamaClass(),
    ...
)
```


# Mengimplementasikan checklist tugas
1. Membuat folder dengan nama `model` dan membuat file dengan nama `mywatchlist.dart` di dalamnya.
2. Meng-*copy* data json dari tugas 3, kemudian *paste* data tersebut ke situs web Quicktype.
3. Pilih pilihan `Copy Code` pada Quicktype dan *paste* kode yang telah disalin tersebut ke dalam file `mywatchlist.dart`.
4. Melakukan `flutter pub add http` pada terminal proyek Flutter untuk menambahkan package http.
5. Menambahkan kode berikut pada `android/app/src/main/AndroidManifest.xml` untuk memperbolehkan akses Internet pada aplikasi Flutter yang sedang dibuat.
```
...
    <application>
    ...
    </application>
    <!-- Required to fetch data from the Internet. -->
    <uses-permission android:name="android.permission.INTERNET" />
...
```
6. Membuat file baru bernama `mywatchlistpage.dart` dan menambah impor-impor yang dibutuhkan.
```
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/databudget.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/tambahbudget.dart';
import 'package:counter_7/detailpage.dart';
import 'package:flutter/material.dart';
```
7. Melakukan pengambilan data dari URL https://tugas2pbpsc.herokuapp.com/mywatchlist/json/ menggunakan `http.get` dengan kode sebagai berikut.
```
Future<List<MyWatchList>> fetchMyWatchList() async {
        var url = Uri.parse('https://tugas2pbpsc.herokuapp.com/mywatchlist/json/');
        print(url);
        var response = await http.get(
        url,
        headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
        },
        );
        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));
        // melakukan konversi data json menjadi object MyWatchList
        List<MyWatchList> watchList = [];
        for (var d in data) {
        if (d != null) {
            watchList.add(MyWatchList.fromJson(d));
        }
        }

        return watchList;
    }
```
8. Menambah drawer dan FutureBuilder sebagai body untuk menampilkan judul-judul watch list serta membuat navigasi dari setiap judul ke halaman detail pada `mywatchlistpage.dart`.
9. Membuat file baru bernama `detailpage.dart` dan menambah impor-impor yang dibutuhkan.
```
import 'package:flutter/material.dart';
import 'package:counter_7/mywatchlistpage.dart';
import 'package:counter_7/databudget.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/tambahbudget.dart';
import 'package:counter_7/model/mywatchlist.dart';
```
10. Menambah drawer dan Column untuk menampilkan judul, release date, rating, review, dan status (sudah ditonton/belum) serta menambahkan tombol untuk kembali ke daftar mywatchlist.
11. Melakukan add-commit-push ke GitHub.