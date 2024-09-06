import 'package:flutter/material.dart';
import 'package:flutter_new_joiner_app/app/core/global%20function/global_const.dart';
import 'package:flutter_new_joiner_app/app/core/global%20function/global_function.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String? appInfo;

  @override
  void initState() {
    super.initState();
    getAppInfo();
  }

  // GET VERSION AND BUILD NUMBER
  Future<void> getAppInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;

    setState(() {
      appInfo = "$version ($buildNumber)";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.tertiary,
        title: const Text(
          "Settings",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/flutter.png',
              height: 160,
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'pub.dev Package Searcher',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'A simple pub.dev package searcher primarily to showcase how a generic app in Flutter can be done. This also serves as a test run on the usage of Riverpod. Credits goes to the pub.dev team for allowing public consumption of their APIs.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    launchWeb(flutterDevLink);
                  },
                  child: const Text("Visit flutter.dev"),
                ),
                const SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    launchWeb(pubDevLink);
                  },
                  child: const Text("Visit pub.dev"),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                launchWeb(riverpodDevLink);
              },
              child: const Text("Visit riverpod.dev"),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(appInfo ?? ""),
          ],
        ),
      ),
    );
  }
}
