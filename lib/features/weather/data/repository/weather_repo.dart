import 'package:geolocator/geolocator.dart';
import 'package:weather_app/features/weather/data/data_providers/weather_data.dart';
import 'package:weather_app/features/weather/data/model/weather.dart';

class WeatherRepo {
  //  WeatherData().fetchWeatherApi(event.position);

  Future<Weather?> fetchApi(Position position) async {
    final jsonStr = await WeatherData().fetchWeatherApi(position);
    // final jsonStr = await WeatherData().fetchWeatherApi(position);
    if (jsonStr != null) {
      return Weather.fromJson(jsonStr);
    }
    else{
      return null;
    }
  }
}
