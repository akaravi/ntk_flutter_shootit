import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  final response =
      await http.get(Uri.parse('https://apicms.ir/api/v1/Auth/Captcha'));

  if (response.statusCode == 200) {
    // Parse the response data
    print('Response data: ${response.body}');
  } else {
    // Handle errors
    print('Error: ${response.statusCode}');
  }
}

class ApiService {
  final String baseUrl;

  ApiService(this.baseUrl);

  Future<Map<String, dynamic>> fetchData(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
