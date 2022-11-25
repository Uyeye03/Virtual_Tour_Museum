class Comment {
  int id = 0;
  int museumId = 0;
  String namaPengunggah = "";
  String tanggalUnggah = "";
  String komentar = "";

  // constructor
  Comment(
      {required this.id,
      required this.museumId,
      required this.namaPengunggah,
      required this.tanggalUnggah,
      required this.komentar});

  Comment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    museumId = json['museumId'];
    namaPengunggah = json['namaPengunggah'];
    tanggalUnggah = json['noTtanggalUnggahelp'];
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

  // getter museumId
  int getMuseumId() {
    return museumId;
  }

  // setter museumId
  void setMuseumId(int museumId) {
    this.museumId = museumId;
  }

  // setter namaPengunggah
  void setNamaPengunggah(String namaPengunggah) {
    this.namaPengunggah = namaPengunggah;
  }

  // getter namaPengunggah
  String getNamaPengunggah() {
    return namaPengunggah;
  }

  // setter tanggalUnggah
  void setTanggalUnggah(String tanggalUnggah) {
    this.tanggalUnggah = tanggalUnggah;
  }

  // getter tanggalUnggah
  String getTanggalUnggah() {
    return tanggalUnggah;
  }

  // setter komentar
  void setKomentar(String komentar) {
    this.komentar = komentar;
  }

  // getter komentar
  String getKomentar() {
    return komentar;
  }
}
