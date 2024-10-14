import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:s3e_flutter4/doaa_data.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    _loadDoaa();
  }

  List<DoaaData> _list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            separatorBuilder: (context, index) => Divider(),
            itemCount: _list.length,
            itemBuilder: (context, index) => Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                    trailing: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_list[index].count == 1) {
                            _list.removeAt(index);
                          } else {
                            _list[index].count--;
                          }
                        });
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text('${_list[index].count}'),
                        decoration: BoxDecoration(
                          color: Colors.blue[200],
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    title: Text(
                      _list[index].doaa,
                    ),
                  ),
                )));
  }

  _loadDoaa() async {
    String text = await rootBundle.loadString('assets/doaa.txt');
    List<String> data = text.split('.');
    for (int i = 0; i < data.length; i++) {
      if (data[i].isNotEmpty) {
        var item = data[i].split('-');
        if (item.length == 2) {
          setState(() {
            _list.add(DoaaData(item[0], int.parse(item[1].trim())));
          });
        }
      }
    }
  }
}
