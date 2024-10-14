import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pageIndex = 0;
  List<Widget> _pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.cyan,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/255379/pexels-photo-255379.jpeg'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ahmed Mohamed',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    'ahmed@gmail.com',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            ListTile(
              selected: _pageIndex == 0,
              selectedColor: Colors.green,
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                _setDrawerItem(0);
              },
            ),
            ListTile(
              selected: _pageIndex == 1,
              selectedColor: Colors.green,
              leading: Icon(Icons.inbox),
              title: Text('Email'),
              onTap: () {
                _setDrawerItem(1);
              },
            ),
            ListTile(
              selected: _pageIndex == 2,
              selectedColor: Colors.green,
              leading: Icon(Icons.image),
              title: Text('Gallery'),
              onTap: () {
                _setDrawerItem(2);
              },
            ),
            Divider(),
            ListTile(
              selected: _pageIndex == 3,
              selectedColor: Colors.green,
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                _setDrawerItem(3);
              },
            ),
            ListTile(
              selected: _pageIndex == 4,
              selectedColor: Colors.green,
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () {
                _setDrawerItem(4);
              },
            ),
          ],
        ),
      ),
      body: _pages[_pageIndex],
    );
  }

  void _setDrawerItem(int index) {
    setState(() {
      _pageIndex = index;
    });
    Navigator.pop(context);
  }
}
