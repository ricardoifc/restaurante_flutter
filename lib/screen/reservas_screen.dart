import 'package:flutter/material.dart';

class ReservasScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    final boton = new ElevatedButton(
      child: Text("Enviar reserva"),
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
        title: Text('Reservas'),
      ),

      body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Text('Para reservar llena \nlos suguientes campos', style: TextStyle(color: Colors.redAccent, fontSize: 30)),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  width: 350.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                  ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Nombre'
                      ),
                    ),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  width: 350.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Apellido'
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  width: 200.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Dia de reserva'
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  width: 200.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Mes de Reserva'
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  width: 200.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Hora de reserva'
                    ),
                  ),
                ),



                boton
              ],
            ),
          )
      ),
    );
  }
}