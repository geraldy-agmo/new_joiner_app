import 'package:flutter_new_joiner_app/app/models/package.dart';
import 'package:flutter_new_joiner_app/app/repositories/package_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchPackageNotifier extends Notifier<List<Package>> {
  @override
  List<Package> build() {
    return [Package(package: "provider")];
  }

  Future<void> getPackageByQuery(String query, int page) async {
    final packageList =
        await PackageRepository().fetchPackageByQuery(query, "like", page);

    state = packageList;
  }
}

final searchPackageProvider =
    NotifierProvider<SearchPackageNotifier, List<Package>>(() {
  return SearchPackageNotifier();
});
