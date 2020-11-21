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
        backgroundColor: Colors.teal,
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
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('images/avatar.jpeg'),
          ),
          Text(
            'Shenets Evgeny',
            style: TextStyle(
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
                letterSpacing: 2.5),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.bold,
              color: Colors.white54,
              fontSize: 18,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: ListTile(
              leading: Icon(Icons.phone, color: Colors.teal),
              title: Text(
                '+38 511 3020971',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 16),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: ListTile(
              leading: Icon(Icons.email, color: Colors.teal),
              title: Text(
                'evgenyshenet91@gmail.com',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
