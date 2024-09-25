// ignore_for_file: avoid_print, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:final_app/widgets/weather_service.dart';

class History extends StatefulWidget {
  final String username;
  final String userEmail;
  final int currentIndex;
  final String phone;
  final String region;
  final String district;
  final String village;

  const History({
    Key? key,
    required this.username,
    required this.userEmail,
    required this.phone,
    required this.region,
    required this.district,
    required this.village,
    this.currentIndex = 3,
  }) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  late String phone;
  late String region;
  late String district;
  late String village;

  Map<String, dynamic>? weatherData;

  @override
  void initState() {
    super.initState();

    phone = widget.phone;
    region = widget.region;
    district = widget.district;
    village = widget.village;

    _fetchWeather();
  }

  Future<void> _fetchWeather() async {
    try {
      WeatherService weatherService = WeatherService();
      var data = await weatherService.fetchWeather(region);
      setState(() {
        weatherData = data;
      });
    } catch (e) {
      print('Error fetching weather: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: weatherData == null
          ? const Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                // Background Image based on weather condition
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(getBackgroundImage()),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Weather details over the background image
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        const SizedBox(height: 30),
                      // City Name and Date
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                        child: Column(
                          children: [
                            Text(
                              '${region}, ${district}',
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              getCurrentDate(),
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Main Weather Icon and Temperature
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https:${weatherData!['current']['condition']['icon']}',
                            width: 100,
                            height: 100,
                          ),
                          const SizedBox(width: 20),
                          Text(
                            '${weatherData!['current']['temp_c']} °C',
                            style: const TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // Weather Condition
                      Text(
                        weatherData!['current']['condition']['text'],
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Additional Weather Information
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            WeatherInfoBox(
                              icon: Icons.water_drop_outlined,
                              label: 'Humidity',
                              value: '${weatherData!['current']['humidity']}%',
                            ),
                            WeatherInfoBox(
                              icon: Icons.air_outlined,
                              label: 'Wind Speed',
                              value:
                                  '${weatherData!['current']['wind_kph']} km/h',
                            ),
                            WeatherInfoBox(
                              icon: Icons.visibility_outlined,
                              label: 'Visibility',
                              value: '${weatherData!['current']['vis_km']} km',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ],
            ),
    );
  }

  String getBackgroundImage() {
    String condition =
        weatherData!['current']['condition']['text'].toLowerCase();
    if (condition.contains('rain')) {
      return 'assets/images/rain.jpeg';
    } else if (condition.contains('cloud')) {
      return 'assets/images/cloudy.jpeg';
    } else if (condition.contains('clear')) {
      return 'assets/images/clear_sky.jpeg';
    } else {
      return 'assets/images/default.jpeg';
    }
  }

  String getCurrentDate() {
    var now = DateTime.now();
    return '${now.day}/${now.month}/${now.year}';
  }
}

class WeatherInfoBox extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const WeatherInfoBox({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
