import 'package:flutter/material.dart';

class LocalizacionScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    final boton = new ElevatedButton(
      child: Text("Ir a el mapa"),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(50 , 50),
        primary: Colors.red,
        onPrimary: Colors.white,
        elevation: 5,
        shadowColor: Colors.black,
      ),

      onPressed: (){
        Navigator.pushNamed(context, "");
        print("Ir al home");
      },
      onLongPress: (){
        print("Long hello raiced button");
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('¿Donde nos encontramos?'),
      ),

      body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                //Text('Para reservar llena \nlos suguientes campos', style: TextStyle(color: Colors.redAccent, fontSize: 30)),
                Column(
                  children: <Widget>[

                    Text('Estamos ubicados en:', style: TextStyle(color: Colors.redAccent, fontSize: 30)),
                    Text('Calle Ramon Pinto y ', style: TextStyle(color: Colors.black, fontSize: 25)),
                    Text('Calle 10 de Agosto', style: TextStyle(color: Colors.black, fontSize: 25)),
                    Text('alado de la Coopmego', style: TextStyle(color: Colors.black, fontSize: 25)),
                    Container(height: 350, width: 350,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)
                      ),
                      child: const Image(
                        image: NetworkImage('http://imgfz.com/i/K5hC1uJ.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),

        Text(''),
                boton
              ],
            ),
          )
      ),
    );
  }
}