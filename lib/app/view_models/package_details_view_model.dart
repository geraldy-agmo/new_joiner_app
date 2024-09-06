import 'package:flutter/material.dart';
import 'package:flutter_new_joiner_app/app/models/package_details.dart';
import 'package:flutter_new_joiner_app/app/models/publisher.dart';
import 'package:flutter_new_joiner_app/app/repositories/package_repository.dart';

class PackageDetailsViewModel extends ChangeNotifier {
  Future<PackageDetails> getPackageDetails(String packageName) async {
    PackageDetails packageDetails =
        await PackageRepository().fetchPackageDetails(packageName);

    return packageDetails;
  }

  // Publisher
  Future<Publisher> getPublisherName(String packageName) async {
    Publisher publisher =
        await PackageRepository().fetchPublisherName(packageName);

    return publisher;
  }
}
