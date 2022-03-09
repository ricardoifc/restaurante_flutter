import 'package:flutter/material.dart';
class SugerenciasScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    final boton = new ElevatedButton(
      child: Text("Enviar sugerencia"),
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
        title: Text('Sugerencias'),
      ),
      body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Text('Deja tu sugerencia aqui', style: TextStyle(color: Colors.redAccent, fontSize: 30)),
                Container(
                    width: 340.0,
                    height: 150,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                  ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Escribe aqui tu sugerencia con respecto a nuestro Restaurante o la comida'
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