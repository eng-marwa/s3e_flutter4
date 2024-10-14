import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        children: [
          ElevatedButton(onPressed: () => _saveData(), child: Text('Save')),
          ElevatedButton(onPressed: () => _viewData(), child: Text('View')),
        ],
      ))),
    );
  }

  Future<void> _saveData() async {
    const storage = FlutterSecureStorage();
    AndroidOptions _androidOptions = const AndroidOptions(
      encryptedSharedPreferences: true,
    );
    await storage.write(
        key: 'apiKey', value: 'Abc1255956689DFG', aOptions: _androidOptions);
  }

  Future<void> _viewData() async {
    const storage = FlutterSecureStorage();
    AndroidOptions _androidOptions = const AndroidOptions(
      encryptedSharedPreferences: true,
    );
    String? data = await storage.read(key: 'apiKey', aOptions: _androidOptions);
    print(data);
  }
}
