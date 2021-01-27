import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Demo'),
        ),
        body: Center(
          // child: Text('Hello Layout World'),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ratings
            ],
            
          )
          ),
      ),
    );
  }
}

// the stars colurs may change hence the use of "var"
var stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.black),
    Icon(Icons.star, color: Colors.black),
  ],
);

// the layout is fixed, so we can use "final"
final ratingText =  Text(
        '170 Reviews',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      );

// the layout is fixed, so we can use "final"
final ratings = Container(
  padding: EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      stars,
      ratingText, 
    ],
  ),
);

// To minimize the visual confusion that can result from heavily nested layout code, implement pieces of the UI in variables and functions.