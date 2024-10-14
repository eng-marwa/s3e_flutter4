import 'package:flutter/material.dart';

import 'place.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<double> aspectsRatio = [1.0, 2.0, 1.5, 1.0, 0.5, 2.5, 1.7];
  final List<double> height = [100, 150, 200, 120, 250, 80, 100];
  final List<Place> _places = [
    Place('https://images.pexels.com/photos/208745/pexels-photo-208745.jpeg',
        'Place 1'),
    Place('https://images.pexels.com/photos/2884866/pexels-photo-2884866.jpeg',
        'Place 2'),
    Place('https://images.pexels.com/photos/1462935/pexels-photo-1462935.jpeg',
        'Place 3'),
    Place('https://images.pexels.com/photos/947185/pexels-photo-947185.jpeg',
        'Place 4'),
    Place('https://images.pexels.com/photos/3073666/pexels-photo-3073666.jpeg',
        'Place 5'),
    Place('https://images.pexels.com/photos/372490/pexels-photo-372490.jpeg',
        'Place 6'),
    Place('https://images.pexels.com/photos/1059078/pexels-photo-1059078.jpeg',
        'Place 7'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GridView.builder(
        itemCount: _places.length,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    _places[index].pic,
                  ),
                  fit: BoxFit.cover)),
          height: height[index],
        ),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            mainAxisExtent: 200),
      )),
    );
  }
}

/*
   child: GridView.builder(
        itemCount: _places.length,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(_places[index].pic), fit: BoxFit.cover)),
        ),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 3 / 2),
      )),
 */
