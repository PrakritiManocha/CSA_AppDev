import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TruthScreen extends StatefulWidget {
  @override
  _TruthScreenState createState() => _TruthScreenState();
}

class _TruthScreenState extends State<TruthScreen> {
  String truthQuestion = '';
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchTruth();
  }

  Future<void> fetchTruth() async {
    final url = Uri.parse('https://api.truthordarebot.xyz/v1/truth?rating=pg13');

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          truthQuestion = data['question'];  
          isLoading = false;
        });
      } else {
        setState(() {
          isLoading = false;
        });
        throw Exception('Failed to load truth question');
      }
    } catch (e) {
      print('Error: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Truth Question'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  truthQuestion,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
    );
  }
}
