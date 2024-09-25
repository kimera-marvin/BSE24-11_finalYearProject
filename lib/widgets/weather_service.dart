import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  final String apiKey = '7ba562c707344f898ca135555241509';
  final String baseUrl = 'https://api.weatherapi.com/v1/';

  Future<Map<String, dynamic>> fetchWeather(String city) async {
    final url = '${baseUrl}current.json?key=$apiKey&q=$city';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
