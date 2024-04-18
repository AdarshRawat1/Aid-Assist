import 'package:flutter/material.dart';
import 'package:aid_employ/features/feed/feed_screen.dart';
import 'package:aid_employ/features/home/screens/home_screen.dart';
import 'package:aid_employ/features/post/screens/add_post_screen.dart';
import 'package:aid_employ/features/donate/donate_map.dart';

class Constants {
  static const String googleMapsApiKey="__ SECRET API __"; 
  static const logoPath = 'assets/images/logo.png';
  static const loginEmotePath = 'assets/images/loginEmote.png';
  static const googlePath = 'assets/images/google.png';

  static const bannerDefault =
      'https://thumbs.dreamstime.com/b/abstract-stained-pattern-rectangle-background-blue-sky-over-fiery-red-orange-color-modern-painting-art-watercolor-effe-texture-123047399.jpg';
  static const avatarDefault =
      'https://firebasestorage.googleapis.com/v0/b/soln-no-poverty.appspot.com/o/Defaults%2FAvatar.png?alt=media&token=15219f88-1e6b-4b7c-8601-081c1930d061';

  static const tabWidgets = [
    FeedScreen(),
    AddPostScreen(),
    DonationScreen(),
  ];

  static const IconData up = IconData(0xe800, fontFamily: 'MyFlutterApp', fontPackage: null);
  static const IconData down = IconData(0xe801, fontFamily: 'MyFlutterApp', fontPackage: null);

  static const awardsPath = 'assets/images/awards';

  static const awards = {
    'awesomeAns': '${Constants.awardsPath}/awesomeanswer.png',
    'gold': '${Constants.awardsPath}/gold.png',
    'platinum': '${Constants.awardsPath}/platinum.png',
    'helpful': '${Constants.awardsPath}/helpful.png',
    'plusone': '${Constants.awardsPath}/plusone.png',
    'rocket': '${Constants.awardsPath}/rocket.png',
    'thankyou': '${Constants.awardsPath}/thankyou.png',
    'til': '${Constants.awardsPath}/til.png',
  };
}
