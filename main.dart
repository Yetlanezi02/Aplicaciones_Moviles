import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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

  Widget Botones = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(CupertinoIcons.heart_fill, color:Colors.red,),
        Icon(CupertinoIcons.arrowshape_turn_up_left_fill, color:Colors.red),
      ],
    ),
  );

  Widget Tb = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Me Gusta', style: TextStyle(color: Colors.red),),
        Text('Compartir', style: TextStyle(color: Colors.red),),
      ],
    ),
  );
  
  Widget Texto = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      'George Walton Lucas Jr. conocido internacionalmente como George Lucas, es un cineasta, '
      'filántropo y empresario estadounidense. Nacio en Modesto, California el 14 de mayo de 1944. '
      'Lucas es más conocido por crear las franquicias '
      'de Star Wars e Indiana Jones y fundar Lucasfilm, LucasArts e Industrial Light & Magic. '
      'Se desempeño como presidente de Lucasfilm antes de venderlo a The Walt Disney Company en 2012',
      softWrap: true,
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
            Texto,
            Botones,
            Tb,
          ],
        ),
      ),
    );
  }
}