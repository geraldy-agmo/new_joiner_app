import 'package:flutter_new_joiner_app/app/models/package.dart';
import 'package:flutter_new_joiner_app/app/models/package_details.dart';
import 'package:flutter_new_joiner_app/app/models/publisher.dart';
import 'package:flutter_new_joiner_app/app/services/networking_services.dart';

class PackageRepository {
  // API
  final NetworkingServices _networkingServices = NetworkingServices();

  Future<List<Package>> fetchPackageByQuery(String query, sortBy, page) async {
    dynamic response =
        await _networkingServices.getPackageByQuery(query, sortBy, page);

    final jsonData = response['packages'] as List;

    List<Package> packageList =
        jsonData.map((json) => Package.fromJson(json)).toList();
    return packageList;
  }

  Future<PackageDetails> fetchPackageDetails(String packageName) async {
    dynamic response = await _networkingServices.getPackageDetails(packageName);

    PackageDetails packageDetails = PackageDetails.fromJson(response);

    return packageDetails;
  }

  Future<Publisher> fetchPublisherName(String packageName) async {
    dynamic response = await _networkingServices.getPublisherName(packageName);

    Publisher publisher = Publisher.fromJson(response);

    return publisher;
  }

  // SHARED PREFERENCES
  Future<void> saveFavourite(String selectedPackage) async {
    await _networkingServices.saveFavourite(selectedPackage);
  }

  Future<List<String>> getFavouriteList() async {
    return await _networkingServices.getFavouriteList();
  }

  Future<void> removeFavourite(String selectedPackage) async {
    await _networkingServices.removeFavourite(selectedPackage);
  }
}
