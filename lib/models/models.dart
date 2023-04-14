class HospitalsData {
  final String name;
  // final int id;
  final String address;
  final String region;
  final int phone;

  const HospitalsData({
    required this.name,
    required this.address,
    required this.region,
    required this.phone,
  });

  factory HospitalsData.fromJson(Map<String, dynamic> json) {
    return HospitalsData(
      name: json['name'],
      address: json['id'],
      region: json['title'],
      phone: json['title'],
    );
  }
}
