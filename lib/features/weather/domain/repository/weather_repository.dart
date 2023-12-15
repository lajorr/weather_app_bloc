import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/core/errors/failures.dart';
import 'package:weather_app/features/weather/domain/entities/weather.dart';

abstract class WeatherRepository {
  Future<Either<Failure, Weather>> getCurrentLocationWeather(Position position);
  Future<Either<Failure, Weather>> getRemoteLocationWeather(
      String locationName);
}
