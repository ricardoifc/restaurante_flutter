import 'package:flutter/material.dart';
import 'package:restaurant_flutter/screen/home_screen.dart';
import 'package:restaurant_flutter/screen/localizacion_screen.dart';
import 'package:restaurant_flutter/screen/reservas_screen.dart';
import 'package:restaurant_flutter/screen/sugerencias_screen.dart';
import 'package:restaurant_flutter/screen/productos_screen.dart';
import 'package:restaurant_flutter/screen/splash.dart';


void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      routes: <String, WidgetBuilder>{
        "/pruductos": (_) => ProductsPage(),
        "/listanoticias": (BuildContext context) =>
            ListadoNoticias(titulo: 'Ultimas Noticias'),
        "/galeria": (BuildContext context) =>
            ListadoGaleria(titulo: 'Galeria de fotos'),
        "/clientes" : (BuildContext context)  => ListadoClientes(titulo: 'Listado de CLientes'),
        "/inicio" : (BuildContext context) => HomeScreen(),
        "/sugerencias": (_) => SugerenciasScreen(),
        "/reservas": (_) => ReservasScreen(),
        "/localizacion":(_) => LocalizacionScreen(),
        "/splash": (BuildContext context) => Splash(),






      },


      //home: MyHomePage(title: 'Flutter Demo Home Page 1'),
    );
  }
}