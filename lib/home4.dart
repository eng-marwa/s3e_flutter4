import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Text('Save Internal'),
            ElevatedButton(
                onPressed: () => _saveData(context), child: Text('Save')),
            ElevatedButton(onPressed: () => _viewData(), child: Text('View')),
            Divider(),
            Text('Save External'),
            ElevatedButton(
                onPressed: () => _saveDataEx(context), child: Text('Save')),
            ElevatedButton(onPressed: () => _viewDataEx(), child: Text('View')),
          ],
        ),
      )),
    );
  }

  Future<String> _getInternalPath() async {
    Directory dir = await getApplicationCacheDirectory();
    return dir.path;
  }

  Future<void> _saveData(BuildContext context) async {
    String dirPath = await _getInternalPath();
    // File file = File(dirPath + '/' + 'myfile.txt');
    // File file1 = File('$dirPath/myfile.txt');
    File file = File(join(dirPath, 'myfile.txt'));
    await file.writeAsString('Hello flutter geeks');
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Saved')));
  }

  Future<void> _viewData() async {
    String dirPath = await _getInternalPath();
    File file = File(join(dirPath, 'myfile.txt'));
    String text = await file.readAsString();
    print(text);
  }

  Future<File?> _getExternalPath() async {
    Directory? dir = await getExternalStorageDirectory();
    if (dir != null) {
      print(dir.path);
      return File(join(dir.path, 'myExFile.txt'));
    } else {
      return null;
    }
  }

  Future<void> _saveDataEx(BuildContext context) async {
    File? file = await _getExternalPath();
    if (file != null) {
      await file.writeAsString('Hello all');
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Saved')));
    }
  }

  _viewDataEx() async {
    File? file = await _getExternalPath();
    if (file != null) {
      String text = await file.readAsString();
      print(text);
    }
  }
}
