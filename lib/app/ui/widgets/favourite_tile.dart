import 'package:flutter/material.dart';
import 'package:flutter_new_joiner_app/app/ui/pages/package_detail_page.dart';
import 'package:flutter_new_joiner_app/app/view_models/favourite_view_model.dart';
import 'package:provider/provider.dart';

class FavouriteTile extends StatefulWidget {
  const FavouriteTile({required this.packageName, super.key});

  final String packageName;

  @override
  State<FavouriteTile> createState() => _FavouriteTileState();
}

class _FavouriteTileState extends State<FavouriteTile> {
  late final favouritesProvider =
      Provider.of<FavouriteViewModel>(context, listen: false);

  Future<void> removeFavourite() async {
    await favouritesProvider.removeFavourite(widget.packageName);
    onRemove();
  }

  void onRemove() {
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "${widget.packageName} removed from favourites",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 1),
      ),
    );
  }

  void onPackagePressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            PackageDetailPage(packageName: widget.packageName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onPackagePressed();
      },
      leading: IconButton(
        onPressed: removeFavourite,
        icon: const Icon(
          Icons.favorite_outline_outlined,
        ),
      ),
      title: Text(
        widget.packageName,
      ),
      trailing: const Icon(Icons.keyboard_arrow_right),
    );
  }
}
