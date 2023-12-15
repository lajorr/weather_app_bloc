import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/core/errors/failures.dart';
import 'package:weather_app/features/weather/domain/entities/weather.dart';
import 'package:weather_app/features/weather/domain/repository/weather_repository.dart';

class GetCurrentLocationWeather {
  final WeatherRepository repository;

  GetCurrentLocationWeather({required this.repository});

  Future<Either<Failure, Weather>> call(Position position) async {
    return await repository.getCurrentLocationWeather(position);
  }
}
