import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_new_joiner_app/app/models/package_details.dart';
import 'package:flutter_new_joiner_app/app/models/publisher.dart';
import 'package:flutter_new_joiner_app/app/view_models/favourite_view_model.dart';
import 'package:flutter_new_joiner_app/app/view_models/package_details_view_model.dart';
import 'package:provider/provider.dart';

class PackageDetailPage extends StatefulWidget {
  const PackageDetailPage({required this.packageName, super.key});

  final String packageName;

  @override
  State<PackageDetailPage> createState() => _PackageDetailPageState();
}

class _PackageDetailPageState extends State<PackageDetailPage> {
  late final packageDetailsProvider =
      Provider.of<PackageDetailsViewModel>(context, listen: false);
  late final favouritesProvider =
      Provider.of<FavouriteViewModel>(context, listen: false);

  PackageDetails? packageDetails;
  Publisher? publisher;

  var isLoading = true;

  @override
  void initState() {
    super.initState();

    loadPackageDetails();
  }

  Future<void> loadPackageDetails() async {
    packageDetails =
        await packageDetailsProvider.getPackageDetails(widget.packageName);
    publisher =
        await packageDetailsProvider.getPublisherName(widget.packageName);
    setState(() {
      isLoading = false;
    });
  }

  String getTimeDifference(DateTime date) {
    DateTime now = DateTime.now();
    Duration difference = now.difference(date);

    if (difference.inHours == 0) {
      if (difference.inSeconds < 60) {
        return 'Published just now';
      }
      int minuteDifference = difference.inMinutes;
      return 'Published $minuteDifference minutes ago';
    } else {
      if (difference.inHours > 24) {
        return 'Published ${difference.inDays} days ago';
      }
      int hourDifference = difference.inHours;
      return 'Published $hourDifference hours ago';
    }
  }

  void onCopyPressed() {
    ScaffoldMessenger.of(context).clearSnackBars();
    Clipboard.setData(
      ClipboardData(
        text:
            "${packageDetails!.name} ${packageDetails!.latest.pubspec.version}",
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          "Copied to clipboard",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 1),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.tertiary,
        title: const Text(
          "Package Details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "${packageDetails!.name} ${packageDetails!.latest.pubspec.version}",
                          style: const TextStyle(fontSize: 24),
                          softWrap: true,
                        ),
                      ),
                      IconButton(
                        onPressed: onCopyPressed,
                        icon: const Icon(Icons.copy),
                      ),
                      IconButton(
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
                    ],
                  ),
                  const SizedBox(height: 8),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Text(
                          getTimeDifference(packageDetails!.latest.published),
                        ),
                        const VerticalDivider(),
                        Text(
                          publisher?.publisherId ?? "No publisher",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    packageDetails!.latest.pubspec.description,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
    );
  }
}
