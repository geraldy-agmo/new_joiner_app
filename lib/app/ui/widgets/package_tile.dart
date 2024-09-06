import 'package:flutter/material.dart';
import 'package:flutter_new_joiner_app/app/ui/pages/package_detail_page.dart';
import 'package:flutter_new_joiner_app/app/view_models/favourite_view_model.dart';
import 'package:provider/provider.dart';

class PackageTile extends StatefulWidget {
  const PackageTile({required this.packageName, super.key});

  final String packageName;

  @override
  State<PackageTile> createState() => _PackageTileState();
}

class _PackageTileState extends State<PackageTile> {
  late final favouritesProvider =
      Provider.of<FavouriteViewModel>(context, listen: false);

  void onPackagePressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            PackageDetailPage(packageName: widget.packageName),
      ),
    );
  }

  Future<void> toggleFavourite() async {
    await favouritesProvider.toggleFavourite(widget.packageName);
  }

  @override
  Widget build(BuildContext context) {
    final isFavourite = context.select((FavouriteViewModel favourite) =>
        favourite.isFavourite(widget.packageName));
    return ListTile(
      onTap: () {
        onPackagePressed();
      },
      leading: IconButton(
        onPressed: toggleFavourite,
        icon: isFavourite
            ? const Icon(
                Icons.favorite,
                color: Colors.red,
              )
            : const Icon(
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
