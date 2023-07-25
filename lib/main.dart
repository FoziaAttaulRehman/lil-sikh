import 'package:flutter/material.dart';
import 'package:lil_sikh/splash.dart';

void main() {
  runApp(const LilSikh());
}

class LilSikh extends StatelessWidget {
  const LilSikh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
