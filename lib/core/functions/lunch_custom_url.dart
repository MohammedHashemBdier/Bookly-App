import 'package:bookly_app/core/functions/custom_scaffold_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> lunchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      customScaffoldBar(
        context,
        "Cannot lunch $url",
      );
    }
  }
}
