import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget titulo = Container(
    padding: const EdgeInsets.all(50),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 9),
                child: Icon(
                  Icons.android,
                  size: 80,
                  color: Colors.black,
                ),
              ),
              Text(
                'George Lucas     ',
                style: TextStyle(
                  color: Colors.red[800],
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        Text(
          '¡Luke, yo soy tu padre!                  ',
            style: TextStyle(
            color: Colors.red[400],
            fontSize: 15,
          ),
        ),
      ],
    ),
  );

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Bio',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Biografía',
          ),
        ),
        body: Column(
          children: [
            titulo,
          ],
        ),
      ),
    );
  }
}