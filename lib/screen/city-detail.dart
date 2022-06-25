import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(this.name, this.image, this.detail, {Key? key})
      : super(key: key);
  final String name;
  final String image;
  final String detail;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Expanded(
                child: Image.network(
              image,
              fit: BoxFit.fill,
            )),
            SizedBox(
              height: 15,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 25),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  detail,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )
          ],
        ),
        Positioned(
          top: 20,
          left: 20,
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: 35,
                color: Colors.black,
              )),
        ),
      ]),
    );
  }
}
