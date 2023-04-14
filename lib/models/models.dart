// ignore_for_file: non_constant_identifier_names

class HospitalsData {
  final int id;
  final String nama_rumahsakit;

  final String alamat;
  final String email;
  final int telepon;
  final String image;
  final String deskripsi;

  const HospitalsData(
      {required this.id,
      required this.nama_rumahsakit,
      required this.alamat,
      required this.email,
      required this.telepon,
      required this.image,
      required this.deskripsi});

  factory HospitalsData.fromJson(Map<String, dynamic> json) {
    return HospitalsData(
        id: json['id'],
        nama_rumahsakit: json['nama_rumahsakit'],
        alamat: json['alamat'],
        email: json['email'],
        telepon: json['telepon'],
        image: json['image'],
        deskripsi: json['deskripsi']);
  }
}
