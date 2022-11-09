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
setState() berguna untuk mengimformasikan framework Flutter bahwa status internal objek telah berubah  dan harus di build kembali. Fungsi setState() dapat dipanggil setiap ingin adanya perubahan dalam variabel ditampilkan pada layar UI, contohnya ketika tombol diklik, warna teks akan berubah. 

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

