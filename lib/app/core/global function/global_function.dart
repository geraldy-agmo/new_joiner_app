import 'package:url_launcher/url_launcher.dart';

Future<void> launchWeb(String url) async {
  var uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    launchUrl(uri);
  } else {
    throw "Could Not Launch URL";
  }
}
