import 'package:flutter/material.dart';
import 'package:travelticket/ui/screens/bonus_page.dart';
import 'package:travelticket/ui/screens/get_started.dart';
import 'package:travelticket/ui/screens/main_page.dart';
import 'package:travelticket/ui/screens/sign_up.dart';
import 'package:travelticket/ui/screens/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/SignUp': (context) => SignUpPage(),
        '/bonus-page': (context) => BonusPage(),
        '/Main-page': (context) => MainPage(),
        
      },
    );
  }
}
