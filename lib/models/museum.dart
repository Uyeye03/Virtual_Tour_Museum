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
  id: 1,
  nama: 'Museum 10 November',
  // gambarUtama: 'museum_10_november.jpg',
  gambarUtama:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Museum_10_November.jpg/799px-Museum_10_November.jpg',
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
    comment1,
    comment2,
  ],
);

Museum museum_2 = Museum(
  id: 2,
  nama: 'Museum Majapahit',
  // gambarUtama: 'museum_majapahit_trowulan.jpg',
  gambarUtama:
      'https://assets.kompasiana.com/items/album/2021/10/10/20211009-214342-6161dc5324da9214963a13a4.jpg?t=o&v=740&x=416',
  alamatLengkap: 'Pendopo Agung St, Ngelinguk, Trowulan, Mojokerto, East Java',
  alamatKota: 'Mojokerto',
  deskripsi:
      'Museum Trowulan adalah museum arkeologi yang terletak di Trowulan, Mojokerto, Jawa Timur, Indonesia. Museum ini dibangun untuk menyimpan berbagai artefak dan temuan arkeologi yang ditemukan di sekitar Trowulan. Tempat ini adalah salah satu lokasi bersejarah terpenting di Indonesia yang berkaitan dengan sejarah kerajaan Majapahit. Kebanyakan dari koleksi museum ini berasal dari masa kerajaan Majapahit, akan tetapi koleksinya juga mencakup berbagai era sejarah di Jawa Timur, seperti masa kerajaan Kahuripan, Kediri, dan Singhasari. Museum ini terletak di tepi barat kolam Segaran. Museum Trowulan adalah museum yang memiliki koleksi relik yang berasal dari masa Majapahit terlengkap di Indonesia.',
  linkGoogleMap: 'https://genta.petra.ac.id/',
  linkVirtualTour: 'http://archiexpopcu.com/trowulan/file/',
  rating: 4.6,
  countRate: 0,
  listKomentar: [
    comment3,
    comment4,
  ],
);

Museum museum_3 = Museum(
  id: 3,
  nama: 'Museum Pendidikan Surabaya',
  // gambarUtama: 'museum_pendidikan_surabaya.jpg',
  gambarUtama:
      'https://www.retorika.id/gambar_artikel/362019-11-30%2005.29.42%201.jpg',
  alamatLengkap: 'Genteng Kali St. No.10, Genteng, Surabaya City, East Java',
  alamatKota: 'Surabaya',
  deskripsi:
      'Museum Pendidikan Surabaya merupakan museum tematik yang didirikan sebagai langkah pelestarian sejarah dan budaya bangsa dengan tujuan untuk mendukung kegiatan edukasi, riset dan rekreasi di Kota Surabaya. Museum ini menyimpan bukti materiil Pendidikan pada masa Pra-Aksara, Masa Klasik, Masa Kolonial dan Masa Kemerdekaan. Menempati sebuah bangunan di Jalan Genteng Kali no. 10 yang merupakan bekas gedung Sekolah Taman Siswa.',
  linkGoogleMap: 'https://genta.petra.ac.id/',
  linkVirtualTour: 'https://genta.petra.ac.id/',
  rating: 4.2,
  countRate: 0,
  listKomentar: [
    comment5,
    comment6,
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
