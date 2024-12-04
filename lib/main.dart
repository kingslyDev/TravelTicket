import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelticket/cubit/page_cubit.dart';
import 'package:travelticket/ui/screens/bonus_page.dart';
import 'package:travelticket/ui/screens/get_started.dart';
import 'package:travelticket/ui/screens/main_page.dart';
import 'package:travelticket/ui/screens/sign_up.dart';
import 'package:travelticket/ui/screens/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/SignUp': (context) => SignUpPage(),
          '/bonus-page': (context) => BonusPage(),
          '/Main-page': (context) => MainPage(),
        },
      ),
    );
  }
}
