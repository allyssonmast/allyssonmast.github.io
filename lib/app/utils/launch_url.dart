import 'package:url_launcher/url_launcher.dart';

class LauncherUrl {
  Future launch(String uri) async {
    Uri uriFinal = Uri.parse(uri);
    await canLaunchUrl(uriFinal)
        ? await launchUrl(uriFinal, mode: LaunchMode.externalApplication)
        : throw 'Could not launch $uriFinal';
  }
}
