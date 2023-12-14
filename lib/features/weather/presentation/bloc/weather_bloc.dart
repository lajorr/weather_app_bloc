import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/features/weather/data/repository/weather_repo.dart';

import '../../data/model/weather.dart' as w;

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<FetchWeather>((event, emit) async {
      emit(WeatherLoading());
      try {
        // WeatherFactory wf = WeatherFactory(apiKey, language: Language.ENGLISH);

        // Weather weather = await wf.currentWeatherByLocation(
        //   event.position.latitude,
        //   event.position.longitude,
        // );

        w.Weather? weather =
            await WeatherRepo().fetchApi(event.position); // yo hunxa hola
        // WeatherData().fetchWeatherApi(event.position); // i dont think this should be accesed like thissu
        // print(ww);
        // print(weather);

        // yo garna milxa???
        if (weather != null) {
          emit(WeatherSuccess(weather));
        } else {
          emit(WeatherFailure());
        }
      } catch (e) {
        emit(WeatherFailure());
      }
    });
  }
}
