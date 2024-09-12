import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/vacancy.dart';

class ApiService {
  final String apiUrl = 'https://www.unhcrjo.org/jobs/api';

  Future<List<Vacancy>> fetchVacancies() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        List jsonResponse = json.decode(response.body);
        return jsonResponse.map((job) => Vacancy.fromJson(job)).toList();
      } else {
        throw Exception('Failed to load vacancies');
      }
    } catch (e) {
      throw Exception('Failed to connect to API');
    }
  }
}
