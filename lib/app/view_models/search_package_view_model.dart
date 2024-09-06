import 'package:flutter/material.dart';
import 'package:flutter_new_joiner_app/app/models/package.dart';
import 'package:flutter_new_joiner_app/app/repositories/package_repository.dart';

class SearchPackageViewModel extends ChangeNotifier {
  List<Package> _packageList = [];

  List<Package> get packageList => _packageList;

  Future<void> loadPackageByQuery(String query, String sortBy, int page) async {
    final List<Package> packageList =
        await PackageRepository().fetchPackageByQuery(query, sortBy, page);

    _packageList = packageList;

    notifyListeners();
  }

  void clearPackageList() {
    _packageList = [];
    notifyListeners();
  }

  // Filter

  // final List<String> _filterOptions = ["like", "popularity", "relevance"];

  final Map<String, String> _filterOptions = {
    "relevance": "Search Relevance",
    "newest": "Newest Package",
    "updated": "Recently Updated",
    "popularity": "Popularity",
    "like": "Most Likes",
    "points": "Most Pub Points",
  };

  Map<String, String> get filterOptions => _filterOptions;

  late var _selectedFilter = "relevance";

  String get selectedFilter => _selectedFilter;

  void setSelectedFilter(String filter) {
    _selectedFilter = filter;

    notifyListeners();
  }
}
