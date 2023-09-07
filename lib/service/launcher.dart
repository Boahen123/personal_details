import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

var console = Logger();

class Launcher {
  // location for the URI endpoint

  const Launcher();

  /// The function retrieves the current time from an API and adjusts it based on the timezone offset.
  Future<void> openUrl(String authority, String path) async {
    final Uri url = Uri.https(authority, path);
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        console.d('Could not launch $authority');
      }
    } catch (exception) {
      console.d('error did not work $exception');
    }
  }
}
