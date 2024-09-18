import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'truthscreen.dart';
import 'darescreen.dart'; 
import 'wouldyourather.dart';
import 'neverhaveiever.dart';
import 'splashscreen.dart';
import 'paranoiascreen.dart';


void main() {
  runApp(TruthOrDareApp());
}

class TruthOrDareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Truth or Dare',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/', // Splash screen as the first screen
      routes: {
        '/': (context) => SplashScreen(),
        '/main': (context) => MainScreen(),
        '/truth': (context) => TruthScreen(),
        '/dare': (context) => DareScreen(),
        '/would_you_rather': (context) => WouldYouRather(),
        '/never_have_i_ever': (context) => NeverHaveIEver(),
        '/paranoia': (context) => Paranoia(),
      },
    );
  }
}
