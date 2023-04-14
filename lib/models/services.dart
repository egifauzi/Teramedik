// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:teramedik/models/models.dart';

class Repository {
  final baseUrl = 'https://api.weteamproject.com/api/list-rumah-sakit?page=1';
  Future getDataHospitals() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));

      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);

        List<HospitalsData> hospitalsData =
            it.map((e) => HospitalsData.fromJson(e)).toList();
        return hospitalsData;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
