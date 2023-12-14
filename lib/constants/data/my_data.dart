import 'package:geolocator/geolocator.dart';

class MyData {
  static const String apiKey = "809c7c6b8677070fcfbc430753bd41fe";
// const String apiKey2 = "5e84f9effc534a3ea12155644233103";

  static String getApiURl(Position position) =>
      "https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=$apiKey&units=metric";
}
