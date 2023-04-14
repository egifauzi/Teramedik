import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:teramedik/models/models.dart';

class services {
  final _baseUrl = 'https://api.weteamproject.com/api.json';

  Future getDataHospitals() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
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
