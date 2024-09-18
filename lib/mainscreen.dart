import 'package:flutter/material.dart';
import 'truthscreen.dart';
import 'darescreen.dart';
import 'wouldyourather.dart';  
import 'neverhaveiever.dart';  
import 'paranoiascreen.dart'; 

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Truth or Dare'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TruthScreen()),
                );
              },
              child: Text('Truth'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DareScreen()),
                );
              },
              child: Text('Dare'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WouldYouRather()),  
                );
              },
              child: Text('Would You Rather'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NeverHaveIEver()),  
                );
              },
              child: Text('Never Have I Ever'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Paranoia()),  
                );
              },
              child: Text('Paranoia Question'),
            ),
          ],
        ),
      ),
    );
  }
}
