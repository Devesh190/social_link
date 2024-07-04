SocialMediaLinks Package

A Flutter package that allows users to easily add their social media links with corresponding logos and text to their applications.

Features
Add social media links with corresponding logos and text
Customizable styles and layouts
Support for popular social media platforms

Installation
Add the following line to your pubspec.yaml file:

dependencies:
  social_media_links: ^0.0.1
flutter pub get

Usage

...dart
class HomePage extends StatelessWidget {
const HomePage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(),
body: Container(
child: Column(
children: [
SocialLink(iconData: Social_link.apple_logo, link: ""),
SocialLink(iconData: Social_link.instagram, link: ""),
SocialLink(iconData: Social_link.twitter_logo, link: ""),
SocialLink(iconData: Social_link.facebook, link: ""),
SocialLink(
iconData: Social_link.youtube,
link: "https://www.youtube.com/@flutterdev",
),
SocialLink(iconData: Social_link.apple_music, link: ""),
SocialLink(iconData: Social_link.spotify, link: ""),
],
)),
);
}
}

