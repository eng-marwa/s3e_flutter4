import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:s3e_flutter4/User.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => _saveData(), child: Text('Save User')),
            ElevatedButton(
                onPressed: () => _viewData(), child: Text('View User')),
          ],
        ),
      ),
    );
  }

  Future<void> _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    User user = User('Ahmed', 'ahmed@gmail.com', '01526445');
    var userJson = json.encode(user.toMap()); //convert to json string
    await prefs.setString("USER", userJson);
  }

  _viewData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var userJson = prefs.getString('USER');
    print(userJson);
    if (userJson != null) {
      var jsonData = json.decode(userJson); //convert from json string to map
      User user = User.fromMap(jsonData);
      print(user.name);
    }
  }
}
