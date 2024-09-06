import 'package:flutter/material.dart';
import 'package:flutter_new_joiner_app/app/repositories/package_repository.dart';

class FavouriteViewModel extends ChangeNotifier {
  List<String> _favouriteList = [];

  List<String> get favouriteList => _favouriteList;

  Future<void> getFavouriteList() async {
    final List<String> favouriteList =
        await PackageRepository().getFavouriteList();

    _favouriteList = favouriteList;

    notifyListeners();
  }

  Future<void> saveFavourite(String selectedPackage) async {
    await PackageRepository().saveFavourite(selectedPackage);
    getFavouriteList();
  }

  Future<void> removeFavourite(String selectedPackage) async {
    await PackageRepository().removeFavourite(selectedPackage);
    getFavouriteList();
  }

  Future<void> toggleFavourite(String selectedPackage) async {
    if (favouriteList.contains(selectedPackage)) {
      removeFavourite(selectedPackage);
    } else {
      saveFavourite(selectedPackage);
    }
  }

  bool isFavourite(String packageName) => favouriteList.contains(packageName);
}
