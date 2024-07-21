import 'package:black_market/Features/Auth/Presentation/views/login/Login_view.dart';
import 'package:black_market/Features/Splash/presentation/view/splash_view.dart';
import 'package:black_market/Features/home/presentation/Views/home_page.dart';
import 'package:black_market/firebase_options.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "HomeView": (context) => const HomePage(),
        "LoginView": (context) => const LoginPage(),
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: "Almarai",
      ),
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: SplashView(),
    );
  }
}
