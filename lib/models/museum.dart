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
  List<Comment> listKomentar = [];

  // constructor
  Museum(
      {required this.id,
      required this.nama,
      required this.gambarUtama,
      required this.alamatLengkap,
      required this.alamatKota,
      required this.deskripsi,
      required this.linkGoogleMap,
      required this.linkVirtualTour,
      required this.listKomentar});

  Museum.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    gambarUtama = json['gambarUtama'];
    alamatLengkap = json['alamatLengkap'];
    alamatKota = json['alamatKota'];
    deskripsi = json['deskripsi'];
    linkGoogleMap = json['linkGoogleMap'];
    linkVirtualTour = json['linkVirtualTour'];
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

  // setter listKomentar
  void setListKomentar(List<Comment> listKomentar) {
    this.listKomentar = listKomentar;
  }

  // getter listKomentar
  List<Comment> getListKomentar() {
    return listKomentar;
  }
}
