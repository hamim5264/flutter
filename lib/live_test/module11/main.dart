import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class WeatherData {
  final String city;
  final int temperature;
  final String condition;
  final int humidity;
  final double windSpeed;

  WeatherData({
    required this.city,
    required this.temperature,
    required this.condition,
    required this.humidity,
    required this.windSpeed,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      city: json['city'],
      temperature: json['temperature'],
      condition: json['condition'],
      humidity: json['humidity'],
      windSpeed: json['windSpeed'],
    );
  }
}

class MyApp extends StatelessWidget {
  final List<WeatherData> cities = [
    WeatherData(
      city: "New York",
      temperature: 20,
      condition: "Clear",
      humidity: 60,
      windSpeed: 5.5,
    ),
    WeatherData(
      city: "Los Angeles",
      temperature: 25,
      condition: "Sunny",
      humidity: 50,
      windSpeed: 6.8,
    ),
    WeatherData(
      city: "London",
      temperature: 15,
      condition: "Partly Cloudy",
      humidity: 70,
      windSpeed: 4.2,
    ),
    WeatherData(
      city: "Tokyo",
      temperature: 28,
      condition: "Rainy",
      humidity: 75,
      windSpeed: 8.0,
    ),
    WeatherData(
      city: "Sydney",
      temperature: 22,
      condition: "Cloudy",
      humidity: 55,
      windSpeed: 7.3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather Info App'),
        ),
        body: ListView.builder(
          itemCount: cities.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text("City: ${cities[index].city}"),
                subtitle: Text(
                  'Temperature: ${cities[index].temperature}°C\n'
                  'Condition: ${cities[index].condition}\n'
                  'Humidity: ${cities[index].humidity}%\n'
                  'Wind Speed: ${cities[index].windSpeed} km/h',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
