import 'package:flutter/material.dart';
import 'package:flutter_new_joiner_app/app/models/package.dart';
import 'package:flutter_new_joiner_app/app/ui/widgets/package_tile.dart';

import 'package:flutter_new_joiner_app/app/view_models/search_package_view_model.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late final listeningProvider = Provider.of<SearchPackageViewModel>(context);
  late final packageProvider =
      Provider.of<SearchPackageViewModel>(context, listen: false);

  var _query = "";

  // PAGINATION
  final _pagingController = PagingController<int, Package>(
    firstPageKey: 1,
  );

  Future<void> _loadPagedPackage(int pageKey) async {
    // EMPTY ITEM LIST IF QUERY EMPTY
    if (_query.isEmpty) {
      _pagingController.itemList = [];

      return;
    }

    // LOAD PACKAGE
    try {
      await packageProvider.loadPackageByQuery(
          _query, packageProvider.selectedFilter, pageKey);
      final packageList = packageProvider.packageList;
      final isLastPage = packageList.isEmpty;
      if (isLastPage) {
        _pagingController.appendLastPage(packageList);
      } else {
        final nextPageKey = pageKey + 1;
        _pagingController.appendPage(packageList, nextPageKey);
      }
    } catch (e) {
      _pagingController.error = e;
    }
  }

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      _loadPagedPackage(pageKey);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pagingController.dispose();
  }

  void onFilterPressed() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Sort by"),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                ),
              )
            ],
          ),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (final filter in packageProvider.filterOptions.keys)
                    RadioListTile(
                      value: filter,
                      groupValue: packageProvider.selectedFilter,
                      onChanged: (value) {
                        setState(() {
                          packageProvider.setSelectedFilter(value!);
                        });
                      },
                      title: Text(packageProvider.filterOptions[filter]!),
                    ),
                ],
              );
            },
          ),
        );
      },
    ).then((value) => _pagingController.refresh());
  }

  void onSubmitted(String query) {
    _query = query;
    _pagingController.refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.tertiary,
        title: const Text(
          'Welcome to pub.dev',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: onFilterPressed,
                  icon: const Icon(
                    Icons.tune,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                hintText: 'Search for a package...',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
              ),
              onSubmitted: onSubmitted,
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () => Future.sync(() => _pagingController.refresh()),
              child: PagedListView(
                pagingController: _pagingController,
                builderDelegate: PagedChildBuilderDelegate<Package>(
                  itemBuilder: (context, package, index) => PackageTile(
                    packageName: package.package,
                  ),
                  noItemsFoundIndicatorBuilder: (context) =>
                      const Center(child: Text("No data :(")),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
