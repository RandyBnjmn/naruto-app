
import 'package:flutter/material.dart';

class MyLife extends StatelessWidget {
  // const MyLife({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Naruto Shippuden App'),
        elevation: 0,
        centerTitle: true,
        ),
        body: Column(
          

          children: [
          

            Container(
              padding: EdgeInsets.all(10),
              child: Image(image: AssetImage('assets/naruto.gif'),
              height: 200.0,
              width: 500.0,
              fit: BoxFit.contain,)
            ),
            
            
            Container(
              padding: EdgeInsets.all(10),
              child: Text('Esta serie es importante para mi porque fue una de las primeras series animana que vi y nunca le perdi el interes apesar de sus rellenos, la historia del protagonista es muy conmovedora y me ha inspirado a no rendirme. Bueno profe, ya yo no se que mas decirle, creo que eso seria todo, total, usted no va a ver esta tarea seguro.',
              style: TextStyle(fontSize: 20),))
          ],
        ),
      
    );
  }
}