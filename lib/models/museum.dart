import 'dart:convert';

import 'package:virtual_tour_museum/models/comment.dart';

class Museum {
  int id = 0;
  String nama = "";
  String gambarUtama = "";
  String alamatLengkap = "";
  String alamatKota = "";
  String deskripsi = "";
  String linkGoogleMap = "";
  String linkVirtualTour = "";
  double rating = 0.0;
  int countRate = 0;
  List<Comment> listKomentar = [];

  // constructor
  Museum({
    required this.id,
    required this.nama,
    required this.gambarUtama,
    required this.alamatLengkap,
    required this.alamatKota,
    required this.deskripsi,
    required this.linkGoogleMap,
    required this.linkVirtualTour,
    required this.rating,
    required this.countRate,
    required this.listKomentar,
  });

  Museum.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    gambarUtama = json['gambarUtama'];
    alamatLengkap = json['alamatLengkap'];
    alamatKota = json['alamatKota'];
    deskripsi = json['deskripsi'];
    linkGoogleMap = json['linkGoogleMap'];
    linkVirtualTour = json['linkVirtualTour'];
    rating = json['rating'];
    countRate = json['countRate'];
    listKomentar = json['listKomentar'];
  }

  // setter id
  void setId(int id) {
    this.id = id;
  }

  // getter id
  int getId() {
    return id;
  }

  // setter nama
  void setNama(String nama) {
    this.nama = nama;
  }

  // getter nama
  String getNama() {
    return nama;
  }

  // setter gambarUtama
  void setGambarUtama(String gambarUtama) {
    this.gambarUtama = gambarUtama;
  }

  // getter gambarUtama
  String getGambarUtama() {
    return gambarUtama;
  }

  // setter alamatLengkap
  void setAlamatLengkap(String alamatLengkap) {
    this.alamatLengkap = alamatLengkap;
  }

  // getter alamatLengkap
  String getAlamatLengkap() {
    return alamatLengkap;
  }

  // setter alamatKota
  void setAlamatKota(String alamatKota) {
    this.alamatKota = alamatKota;
  }

  // getter alamatKota
  String getAlamatKota() {
    return alamatKota;
  }

  // setter deskripsi
  void setDeskripsi(String deskripsi) {
    this.deskripsi = deskripsi;
  }

  // getter deskripsi
  String getDeskripsi() {
    return deskripsi;
  }

  // setter linkGoogleMap
  void setLinkGoogleMap(String linkGoogleMap) {
    this.linkGoogleMap = linkGoogleMap;
  }

  // getter linkGoogleMap
  String getLinkGoogleMap() {
    return linkGoogleMap;
  }

  // setter linkVirtualTour
  void setLinkVirtualTour(String linkVirtualTour) {
    this.linkVirtualTour = linkVirtualTour;
  }

  // getter linkVirtualTour
  String getLinkVirtualTour() {
    return linkVirtualTour;
  }

  // setter rating
  void setRating(double rating) {
    this.rating = rating;
  }

  // getter rating
  double getRating() {
    return rating;
  }

  // setter countRate
  void setCountRate(int countRate) {
    this.countRate = countRate;
  }

  // getter countRate
  int getCountRate() {
    return countRate;
  }

  // setter listKomentar
  void setListKomentar(List<Comment> listKomentar) {
    this.listKomentar = listKomentar;
  }

  // getter listKomentar
  List<Comment> getListKomentar() {
    return listKomentar;
  }
}

Museum museum_1 = Museum(
  id: 0,
  nama: 'Museum 10 November',
  gambarUtama: 'museum_10_november.jpg',
  alamatLengkap:
      'Pahlawan St, Alun-alun Contong, Bubutan, Surabaya City, East Java',
  alamatKota: 'Surabaya',
  deskripsi:
      'Tugu Pahlawan didirikan pada tanggal 10 November 1951 dan diresmikan pada tanggal 10 November 1952 oleh Presiden RI, Ir. Soekarno, dengan tujuan untuk mengenang sejarah perjuangan para pahlawan kemerdekaan bangsa Indonesia dalam pertempuran 10 Nopember 1945 di Surabaya. Pada tanggal 10 November 1991 mulai dibangun Museum Sepuluh November dengan luas 1366 m2 pada kedalaman 7 meter di bawah permukaan tanah di areal Kompleks Tugu Pahlawan, Jl. Pahlawan-Surabaya yang bertujuan untuk mendukung keberadaan Tugu Pahlawan serta melengkapi fasilitas sejarahnya dan diresmikan pada tanggal 19 februari 2000 oleh Presiden RI, KH. Abdul Rahman Wachid.',
  linkGoogleMap: 'https://genta.petra.ac.id/',
  linkVirtualTour: 'http://archiexpopcu.com/file/',
  rating: 4.5,
  countRate: 0,
  listKomentar: [
    Comment(
      id: 0,
      museumId: 0,
      namaPengunggah: "Wendy Santoso",
      tanggalUnggah: "24-09-2022",
      komentar:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id odio a mauris ultrices varius quis in diam. Quisque sit amet augue elit. Nulla convallis eget nisl in varius.",
    ),
    Comment(
      id: 1,
      museumId: 0,
      namaPengunggah: "Clarissa Angelia",
      tanggalUnggah: "27-09-2022",
      komentar:
          "Nullam vitae lacus ligula. Vivamus ultrices ultricies libero sed faucibus. Integer elementum porttitor libero, sed placerat enim efficitur semper. Cras imperdiet metus sed nisi egestas malesuada. ",
    ),
  ],
);

Museum museum_2 = Museum(
  id: 1,
  nama: 'Museum Majapahit',
  gambarUtama: 'museum_majapahit_trowulan.jpg',
  alamatLengkap: 'Pendopo Agung St, Ngelinguk, Trowulan, Mojokerto, East Java',
  alamatKota: 'Mojokerto',
  deskripsi:
      'Museum Trowulan adalah museum arkeologi yang terletak di Trowulan, Mojokerto, Jawa Timur, Indonesia. Museum ini dibangun untuk menyimpan berbagai artefak dan temuan arkeologi yang ditemukan di sekitar Trowulan. Tempat ini adalah salah satu lokasi bersejarah terpenting di Indonesia yang berkaitan dengan sejarah kerajaan Majapahit. Kebanyakan dari koleksi museum ini berasal dari masa kerajaan Majapahit, akan tetapi koleksinya juga mencakup berbagai era sejarah di Jawa Timur, seperti masa kerajaan Kahuripan, Kediri, dan Singhasari. Museum ini terletak di tepi barat kolam Segaran. Museum Trowulan adalah museum yang memiliki koleksi relik yang berasal dari masa Majapahit terlengkap di Indonesia.',
  linkGoogleMap: 'https://genta.petra.ac.id/',
  linkVirtualTour: 'http://archiexpopcu.com/trowulan/file/',
  rating: 4.6,
  countRate: 0,
  listKomentar: [
    Comment(
      id: 3,
      museumId: 1,
      namaPengunggah: "Jennifer Oentoro",
      tanggalUnggah: "30-09-2022",
      komentar:
          "Praesent venenatis sit amet nibh nec gravida. Ut ultrices consequat odio sed congue. Pellentesque in dictum elit. Vivamus vel volutpat eros. Nam quis fringilla arcu. Proin vel dignissim odio, molestie condimentum quam.",
    ),
    Comment(
      id: 4,
      museumId: 1,
      namaPengunggah: "Eric Tedja",
      tanggalUnggah: "05-10-2022",
      komentar:
          "Pellentesque quis volutpat nisi, at ultrices dolor. Aenean eleifend, augue dapibus faucibus feugiat, urna mauris tincidunt est, eu iaculis dolor sem non nisl. Phasellus in dui finibus, congue enim vitae, tempor dui. Nulla facilisi. Donec molestie non lacus sit amet tempor.",
    ),
  ],
);

Museum museum_3 = Museum(
  id: 2,
  nama: 'Museum Pendidikan Surabaya',
  gambarUtama: 'museum_pendidikan_surabaya.jpg',
  alamatLengkap: 'Genteng Kali St. No.10, Genteng, Surabaya City, East Java',
  alamatKota: 'Surabaya',
  deskripsi:
      'Museum Pendidikan Surabaya merupakan museum tematik yang didirikan sebagai langkah pelestarian sejarah dan budaya bangsa dengan tujuan untuk mendukung kegiatan edukasi, riset dan rekreasi di Kota Surabaya. Museum ini menyimpan bukti materiil Pendidikan pada masa Pra-Aksara, Masa Klasik, Masa Kolonial dan Masa Kemerdekaan. Menempati sebuah bangunan di Jalan Genteng Kali no. 10 yang merupakan bekas gedung Sekolah Taman Siswa.',
  linkGoogleMap: 'https://genta.petra.ac.id/',
  linkVirtualTour: 'https://genta.petra.ac.id/',
  rating: 4.2,
  countRate: 0,
  listKomentar: [
    Comment(
      id: 5,
      museumId: 2,
      namaPengunggah: "Jeremy Dion P.",
      tanggalUnggah: "10-10-2022",
      komentar:
          "Nullam ac pulvinar arcu, sed interdum est. Pellentesque quis scelerisque velit. Phasellus dapibus dui at tempor dapibus.",
    ),
    Comment(
      id: 6,
      museumId: 2,
      namaPengunggah: "Juan Christopher R. T.",
      tanggalUnggah: "18-10-2022",
      komentar:
          "Fusce vitae tellus ac ante condimentum porta. Proin ex quam, porta rutrum dapibus quis, blandit eu nibh. In hac habitasse platea dictumst. Nullam congue dignissim vehicula.",
    ),
  ],
);

List<Museum> popular = [
  museum_1,
  museum_2,
  museum_3,
];

List<Museum> recent = [
  museum_3,
  museum_2,
  museum_1,
];

List<Museum> rating = [
  museum_2,
  museum_1,
  museum_3,
];
