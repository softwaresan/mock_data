import 'package:flutter/material.dart';
import 'package:mock_data/screen/city-detail.dart';

import 'mock/mock_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("kurdistan Cities"),
        centerTitle: true,
        backgroundColor: Colors.green[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
          itemBuilder: (context, index) => newMethod(context, index),
          separatorBuilder: (context, index) => SizedBox(height: 25),
          itemCount: cities.length,
        ),
      ),
    ));
  }

  GestureDetector newMethod(context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailScreen(cities[index]["name"],
                  cities[index]["image"], cities[index]["detail"])),
        );
      },
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(cities[index]["image"]),
                    fit: BoxFit.fill),
              )),
          Positioned(
            top: 185,
            left: 150,
            child: Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text(cities[index]["name"])),
            ),
          )
        ],
      ),
    );
  }
}
