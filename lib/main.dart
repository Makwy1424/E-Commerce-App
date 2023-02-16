import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'notifiers/authNotifier.dart';
import 'screens/landingPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => AuthNotifier(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cassia',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: Color(0xffff4d6d),
        //Color(0xFF800f2f),
      ),
      home: Scaffold(
        body: LandingPage(),
        //body: NavigationBarPage(selectedIndex: 1),
      ),
    );
  }
}
