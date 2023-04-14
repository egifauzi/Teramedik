// ignore_for_file: non_constant_identifier_names

class HospitalsData {
  final int id;
  final String nama_rumahsakit;

  final String alamat;
  final String email;
  final int telepon;
  final String image;
  final String deskripsi;

  HospitalsData(
      {required this.id,
      required this.nama_rumahsakit,
      required this.alamat,
      required this.email,
      required this.telepon,
      required this.image,
      required this.deskripsi});

  factory HospitalsData.fromJson(Map<String, dynamic> json) {
    return HospitalsData(
      id: json['id'] as int,
      nama_rumahsakit: json['nama_rs'] as String,
      alamat: json['alamat'] as String,
      email: json['email'] as String,
      telepon: json['telepon'] as int,
      image: json['image'] as String,
      deskripsi: json['deskripsi'] as String,
    );
  }
}
