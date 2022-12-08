import 'package:dio/dio.dart';


class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=86060eca3d2f421b9a790236220712&q=$city&aqi=no');
    return response.data;
}}