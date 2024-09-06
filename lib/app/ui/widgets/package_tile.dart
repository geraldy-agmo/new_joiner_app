import 'package:flutter/material.dart';
import 'package:flutter_new_joiner_app/app/view_models/favourite_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PackageTile extends ConsumerStatefulWidget {
  const PackageTile({required this.packageName, super.key});

  final String packageName;

  @override
  ConsumerState<PackageTile> createState() => _PackageTileState();
}

class _PackageTileState extends ConsumerState<PackageTile> {
  // late final favouritesProvider =
  //     Provider.of<FavouriteViewModel>(context, listen: false);

  // void onPackagePressed() {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) =>
  //           PackageDetailPage(packageName: widget.packageName),
  //     ),
  //   );
  // }

  Future<void> toggleFavourite() async {
    await ref
        .read(favouriteProvider.notifier)
        .toggleFavourite(widget.packageName);
  }

  @override
  Widget build(BuildContext context) {
    final isFavorite =
        ref.watch(favouriteProvider.notifier).isFavourite(widget.packageName);

    return ListTile(
      onTap: () {
        // onPackagePressed();
      },
      leading: IconButton(
        onPressed: toggleFavourite,
        icon: isFavorite
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
      trailing: const Icon(
        Icons.keyboard_arrow_right,
      ),
    );
  }
}
