import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        body: buildContainer(),
      ),
    );
  }

  SafeArea buildContainer() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.redAccent,
            backgroundImage: AssetImage('images/avatar.jpeg'),
          ),
          Text(
            'Shenets Evgeny',
            style: TextStyle(
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
                fontSize: 30,
                letterSpacing: 2.5),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.bold,
              color: Colors.redAccent[100],
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
