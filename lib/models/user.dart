import 'package:virtual_tour_museum/models/museum.dart';
import 'package:virtual_tour_museum/models/comment.dart';

class User {
  int id = 0;
  String nama = "";
  String email = "";
  String noTelp = "";
  List<Museum> favoritMuseum = [];
  List<Comment> komentar = [];

  // constructor
  User(
      {required this.id,
      required this.nama,
      required this.email,
      required this.noTelp,
      required this.favoritMuseum,
      required this.komentar});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    email = json['email'];
    noTelp = json['noTelp'];
    favoritMuseum = json['favoritMuseum'];
    komentar = json['komentar'];
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

  // setter email
  void setEmail(String email) {
    this.email = email;
  }

  // getter email
  String getEmail() {
    return email;
  }

  // setter noTelp
  void setNoTelp(String noTelp) {
    this.noTelp = noTelp;
  }

  // getter noTelp
  String getNoTelp() {
    return noTelp;
  }

  // setter favoritMuseum
  void setFavoritMuseum(List<Museum> favoritMuseum) {
    this.favoritMuseum = favoritMuseum;
  }

  // getter favoritMuseum
  List<Museum> getFavoritMuseum() {
    return favoritMuseum;
  }

  // setter komentar
  void setKomentar(List<Comment> komentar) {
    this.komentar = komentar;
  }

  // getter komentar
  List<Comment> getKomentar() {
    return komentar;
  }
}

User user_1 = User(
  id: 0,
  nama: "Wendy Santoso",
  email: "c14200036@john.petra.ac.id",
  noTelp: "085106777266",
  favoritMuseum: [museum_3, museum_2, museum_1],
  // favoritMuseum: [],
  komentar: [comment1],
);
