import 'package:dartz/dartz.dart';
import 'package:weather_app/core/errors/failures.dart';
import 'package:weather_app/features/weather/domain/entities/weather.dart';
import 'package:weather_app/features/weather/domain/repository/weather_repository.dart';

class GetRemoteLocationWeather {
  final WeatherRepository repository;

  GetRemoteLocationWeather({required this.repository});

  Future<Either<Failure, Weather>> call(String locationName) {
    return repository.getRemoteLocationWeather(locationName);
  }
}
