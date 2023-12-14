// https://api.openweathermap.org/data/3.0/onecall?lat=33.44&lon=-94.04&appid={API key}

import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/constants/data/my_data.dart';

class WeatherData {
  Future<String?> fetchWeatherApi(Position position) async {
    final url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=$apiKey&units=metric");

    final response = await http.get(url);
    if (response.statusCode != 200) {
      debugPrint('error : ${response.statusCode}');
      // yesma onFailure state jane hola tara kasariii???
      return null;
    }
    final result = response.body;
    // final w = Weather.fromJson(result);
    // // print(result);
    // print(w.toString());
    return result;
  }
}
