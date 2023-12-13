import 'dart:convert';

class Weather {
  Weather({
    required this.weatherCode,
    required this.areaName,
    required this.sunrise,
    required this.sunset,
    required this.currentTime,
    required this.temp,
    required this.tempMin,
    required this.tempMax,
    required this.weatherCondition,
  });

  final int weatherCode;
  final String areaName;
  final int sunrise;
  final int sunset;
  final int currentTime;
  final double temp;
  final double tempMin;
  final double tempMax;
  final String weatherCondition;

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      weatherCode: map['weather'][0]['id'] as int,
      areaName: map['name'] as String,
      sunrise: map['sys']['sunrise'] as int,
      sunset: map['sys']['sunset'] as int,
      temp: map['main']['temp'] as double,
      tempMin: map['main']['temp_min'] as double,
      tempMax: map['main']['temp_max'] as double,
      weatherCondition: map['weather'][0]['main'] as String,
      currentTime: map['dt'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weatherCode': weatherCode,
      'areaName': areaName,
      'sunrise': sunrise,
      'sunset': sunset,
      'temp': temp,
      'tempMin': tempMin,
      'tempMax': tempMax,
      'weatherCondition': weatherCondition,
    };
  }

  String toJson() => json.encode(toMap());

  factory Weather.fromJson(String source) =>
      Weather.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Weather(weatherCode: $weatherCode, areaName: $areaName, sunrise: $sunrise, sunset: $sunset, temp: $temp, tempMin: $tempMin, tempMax: $tempMax, weatherCondition: $weatherCondition, currentTime: $currentTime,)';
  }
}
