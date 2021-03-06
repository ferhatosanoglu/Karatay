import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:karatay/pages/CalorieCalculationPage.dart';
import 'package:karatay/pages/DietListPage.dart';
import 'package:karatay/pages/ClientInfo.dart';
import 'package:karatay/pages/HomePage.dart';
import 'package:karatay/pages/LoginPage.dart';
import 'package:karatay/pages/SearchPage.dart';
import 'package:karatay/pages/SignUpPage.dart';
import 'package:karatay/pages/ProgramListPage.dart';
import 'package:karatay/pages/WelcomePage.dart';
import 'package:karatay/pages/home.dart';

List<CameraDescription> cameras;
Future<Null> main() async {
  Paint.enableDithering = true;
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error: $e.code\nError Message: $e.message');
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Karatay',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/': (context) => WelcomePage(),
        '/signup': (context) => SignUpPage(),
        '/signin': (context) => LoginPage(),
        '/programlist': (context) => ProgramListPage(),
        '/search': (context) => SearchPage(),
        '/home': (context) => HomePage(),
        '/dietlist': (context) => DietListPage(),
        '/clientinfo': (context) => ClientInfo(),
        '/caloriecalc': (context) => CalorieCalculationPage(),
        '/camera': (context) => Detect(cameras),
      },
    );
  }
}
