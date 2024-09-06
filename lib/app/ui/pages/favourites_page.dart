import 'package:flutter/material.dart';
import 'package:flutter_new_joiner_app/app/ui/widgets/package_tile.dart';
import 'package:flutter_new_joiner_app/app/view_models/favourite_view_model.dart';
import 'package:provider/provider.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  late final favouritesProvider =
      Provider.of<FavouriteViewModel>(context, listen: false);

  @override
  void initState() {
    super.initState();
    getFavouriteList();
  }

  Future<void> getFavouriteList() async {
    await favouritesProvider.getFavouriteList();
  }

  Future<void> removeFavourite(String selectedPackage) async {
    await favouritesProvider.removeFavourite(selectedPackage);
    onRemove(selectedPackage);
  }

  void onRemove(String selectedPackage) {
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "$selectedPackage removed from favourites",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final favourites = context
        .select((FavouriteViewModel favourite) => favourite.favouriteList);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.tertiary,
        title: const Text(
          "My Favourite Packages",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: favourites.isEmpty
          ? const Center(
              child: Text("No favourites :("),
            )
          : ListView.builder(
              itemCount: favourites.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    removeFavourite(favourites[index]);
                  },
                  key: ValueKey(favourites[index]),
                  background: Container(
                    color: Colors.red,
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "Delete",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  child: PackageTile(
                    packageName: favourites[index],
                  ),
                );
              },
            ),
    );
  }
}
