import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialLink extends StatelessWidget {
  final String username;
  final String url;
  final IconData iconData;
  final TextStyle placeholderStyle;
  final Color iconColor;
  final double iconSize;
  const SocialLink(
      {super.key,
      required this.iconData,
      this.username = "",
      required this.url,
      this.placeholderStyle = const TextStyle(
        fontSize: 20,
        color: Colors.grey,
      ),
      this.iconSize = 30,
      this.iconColor = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      child: InkWell(
        onTap: () async {
          await launch(url);
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: iconSize,
              width: iconSize,
              child: Icon(
                iconData,
                size: iconSize,
                color: iconColor,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              username,
              style: placeholderStyle,
            )
          ],
        ),
      ),
    );
  }
}
