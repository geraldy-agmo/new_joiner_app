import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NetworkingServices {
  // API
  final _baseUrl = "https://pub.dev/api/";

  final dio = Dio();

  Future<dynamic> getPackageByQuery(
      String query, String sortBy, int page) async {
    try {
      final response = await dio.get(
        "${_baseUrl}search?",
        queryParameters: {
          "q": query,
          "sort": sortBy,
          "page": page,
        },
      );

      return response.data;
    } on DioException catch (e) {
      print(e);
    }
  }

  Future<dynamic> getPackageDetails(String packageName) async {
    try {
      final response = await dio.get("${_baseUrl}packages/$packageName");

      return response.data;
    } on DioException catch (e) {
      print(e);
    }
  }

  Future<dynamic> getPublisherName(String packageName) async {
    try {
      final response =
          await dio.get("${_baseUrl}packages/$packageName/publisher");

      return response.data;
    } on DioException catch (e) {
      print(e);
    }
  }

  // SHARED PREFERENCES
  Future<void> saveFavourite(String selectedPackage) async {
    final prefs = await SharedPreferences.getInstance();

    final favouritesList = prefs.getStringList('favourites') ?? [];

    favouritesList.add(selectedPackage);

    await prefs.setStringList('favourites', favouritesList);
  }

  Future<List<String>> getFavouriteList() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('favourites') ?? [];
  }

  Future<void> removeFavourite(String selectedPackage) async {
    final prefs = await SharedPreferences.getInstance();
    var favouriteList = prefs.getStringList('favourites') ?? [];

    favouriteList.removeWhere((package) => package == selectedPackage);

    await prefs.setStringList('favourites', favouriteList);
  }
}
