import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  const Weather({
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

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
