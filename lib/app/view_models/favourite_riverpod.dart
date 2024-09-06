import 'package:flutter_new_joiner_app/app/repositories/package_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavouriteNotifier extends Notifier<List<String>> {
  @override
  List<String> build() {
    return [];
  }

  Future<void> getFavouriteList() async {
    final List<String> favouriteList =
        await PackageRepository().getFavouriteList();

    state = favouriteList;
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
    if (state.contains(selectedPackage)) {
      removeFavourite(selectedPackage);
    } else {
      saveFavourite(selectedPackage);
    }
  }

  bool isFavourite(String packageName) => state.contains(packageName);
}

final favouriteProvider = NotifierProvider<FavouriteNotifier, List<String>>(() {
  return FavouriteNotifier();
});
