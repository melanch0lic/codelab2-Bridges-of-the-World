import 'package:codelab_2/pages/splash_page.dart';
import 'package:flutter/material.dart';

import 'pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
