import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    //Botones
    double minS = 180;
    double maxS= 45;
    final buttonMenu = new ElevatedButton(
      child: Text("Menu de Restaurante"),
      style: ElevatedButton.styleFrom(
        minimumSize:  Size(minS, maxS),
        primary: Colors.red,
        onPrimary: Colors.white,
        elevation: 5,
        shadowColor: Colors.black,
      ),

      onPressed: (){
        Navigator.pushNamed(context, "/pruductos");
        print("Ir al home");
      },
      onLongPress: (){
        print("Long hello raiced button");
      },

    );

    final buttonNoticia = new ElevatedButton(
      child: Text("Noticias"),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(minS, maxS),
          primary: Colors.red,
          onPrimary: Colors.white,
          elevation: 5,
          shadowColor: Colors.black,
      ),

      onPressed: (){
        Navigator.pushNamed(context, "/listanoticias");
        print("Ir al home");
      },
      onLongPress: (){
        print("Long hello raiced button");
      },
    );

    final buttonGaleria = new ElevatedButton(
      child: Text("Galeria"),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(minS, maxS),
        primary: Colors.red,
        onPrimary: Colors.white,
        elevation: 5,
        shadowColor: Colors.black,
      ),

      onPressed: (){
        Navigator.pushNamed(context, "/galeria");
        print("Ir galeria");
      },
      onLongPress: (){
        print("Long hello raiced button");
      },
    );

    final buttonReservas = new ElevatedButton(
      child: Text("Reservas"),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(minS, maxS),
        primary: Colors.red,
        onPrimary: Colors.white,
        elevation: 5,
        shadowColor: Colors.black,
      ),

      onPressed: (){
        Navigator.pushNamed(context, "/reservas");
        print("Reservas");
      },
      onLongPress: (){
        print("Long hello raiced button");
      },
    );

    final buttonSugerencias = new ElevatedButton(
      child: Text("Sugerencias"),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(minS, maxS),
        primary: Colors.red,
        onPrimary: Colors.white,
        elevation: 5,
        shadowColor: Colors.black,
      ),

      onPressed: (){
        Navigator.pushNamed(context, "/sugerencias");
        print("Ir al home");
      },
      onLongPress: (){
        print("Long hello raiced button");
      },
    );
    final buttonLocalizacion = new ElevatedButton(
      child: Text("Localización"),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(minS, maxS),
        primary: Colors.red,
        onPrimary: Colors.white,
        elevation: 5,
        shadowColor: Colors.black,
      ),

      onPressed: (){
        Navigator.pushNamed(context, "/localizacion");
        print("Ir al home");
      },
      onLongPress: (){
        print("Long hello raiced button");
      },
    );
    final button6 = new ElevatedButton(
      child: Text("Ir a splash"),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(minS, maxS),
        primary: Colors.red,
        onPrimary: Colors.white,
        elevation: 5,
        shadowColor: Colors.black,
      ),

      onPressed: (){
        Navigator.pushNamed(context, "/splash");
        print("Ir al home");
      },
      onLongPress: (){
        print("Long hello raiced button");
      },
    );








    return Scaffold(
        appBar: AppBar(
          title: const Text('Restaurante Chino Loja'),
          actions: <Widget>[

          ],
        ),
        body: Center(
          child:Container(
            child: Column(
              children: <Widget>[
                Center(child: Text(' Bienvenido al restaurante\n Chino de la ciudad de Loja', style: TextStyle(color: Colors.redAccent, fontSize: 30,fontWeight: FontWeight.bold))),
                Text(''),
                Text('Para revisar el Menu aqui'),
                buttonMenu,
                Text(''),
                Text('Ver las ultimas noticias aqui'),
                buttonNoticia,
                Text(''),
                Text('Ver la galeria aqui'),
                buttonGaleria,
                Text(''),
                Text('Para reservas aqui'),
                buttonReservas,
                Text(''),
                Text('Para dejar tu sugerencia aqui'),
                buttonSugerencias,
                Text(''),
                Text('¿Donde nos econtramos?'),
                buttonLocalizacion ,

                //Text('ir a splash'),
                //button6,

              ],
            ),
          ),
        )
    );
  }
}

class FichaNoticia extends StatelessWidget{
  final String name;
  final String description;
  final String imagen;


  const FichaNoticia({required this.name, required this.description, required this.imagen}):super();

  @override
  Widget build(BuildContext context){
    //final ButtonStyle style =
    //ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Card(

        child: Container(

          child: Column(

            children: <Widget>[

              Image(

                image: NetworkImage('$imagen'),
                fit: BoxFit.fill,
              ),

                    Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(this.description),
              ElevatedButton(
                child: Text("Ver mas"),
                style: ElevatedButton.styleFrom(

                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  elevation: 5,
                  shadowColor: Colors.black,
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "");
                  print("Pedido con exito");
                },
              )

            ],
          ),
        )
    );
  }
}
class ListadoNoticias extends StatelessWidget{
  final String titulo;
  const ListadoNoticias({required this.titulo}):super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.titulo),
      ),
      body: ListView(
        children: <Widget>[
          FichaNoticia(name: 'Rusia y Ucrania', description: 'El lunes, en la ciudad de Melitópol, en el sur de Ucrania, el alcalde Ivan Federov se sentó en su escritorio para enviar su actualización diaria de Facebook.', imagen: 'https://ichef.bbci.co.uk/news/800/cpsprodpb/E5BB/production/_123611885__123605111_mediaitem123604343.jpg.webp'),
          FichaNoticia(name: 'El bitcoin sube a 42.000 ante la posible creación de una nueva moneda digital respaldada por la Reserva Federal de EE. UU.', description: 'l precio de la criptomoneda más utilizada en el mundo, el bitcoin, se ha disparado este miércoles y, tras subir cerca de un 8 %, ha superado los 42.000 dólares, influida por las informaciones que apuntan a que EE.UU. podría estar evaluando crear su propia criptodivisa.', imagen: 'https://estaticos-cdn.elperiodico.com/clip/5d0a3ba8-43db-4b2f-abc9-882d8344e5d5_alta-libre-aspect-ratio_default_0.jpg'),

        ],
      ),
    );
  }

}


class FichaCliente extends StatelessWidget{
  final String name2;
  final String direccion2;
  final String correo2;
  final String imagen2;


  const FichaCliente({required this.name2, required this.direccion2, required this.correo2, required this.imagen2}):super();

  @override
  Widget build(BuildContext context){
    //final ButtonStyle style =
    //ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Card(

        child: Container(
          height: 150,
          child: Row(
            children: <Widget>[
              Image(
                image: NetworkImage('$imagen2'),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(this.name2, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(this.direccion2),
                    Text(this.correo2)

                  ],
                ),
              )

            ],
          ),
        )
    );
  }
}
class ListadoClientes extends StatelessWidget{
  final String titulo;
  const ListadoClientes({required this.titulo}):super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.titulo),
      ),
      body: ListView(
        children: <Widget>[
          FichaCliente(name2: 'Ricardo Freire', direccion2: 'Operadores', correo2: "ricardoifc@me.com", imagen2: 'https://pbs.twimg.com/profile_images/1105884155555008512/dJpDb1I__400x400.jpg'),
          FichaCliente(name2: 'juan', direccion2: 'centro', correo2: "test@hotmail.com", imagen2: 'https://image.freepik.com/vector-gratis/diseno-avatar-persona_24877-38137.jpg'),
          FichaCliente(name2: 'Pedro', direccion2: 'San Sebastian', correo2: "asdasd@asdasd.com", imagen2: 'https://previews.123rf.com/images/djvstock/djvstock1608/djvstock160807998/61244673-hombre-hombre-traje-avatar-persona-personas-icono-ilustraci%C3%B3n-aislada-y-plana-.jpg'),
          FichaCliente(name2: 'Diego', direccion2: 'El valle', correo2: "gasdg@fafg.com", imagen2: 'https://cdn.icon-icons.com/icons2/1879/PNG/512/iconfinder-3-avatar-2754579_120516.png'),


        ],
      ),
    );
  }

}

class ListadoGaleria extends StatelessWidget{
  final String titulo;
  const ListadoGaleria({required this.titulo}):super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.titulo),
      ),
      body: ListView(
        children: <Widget>[
          FichaGaleria(name2: 'Gran Muralla de China', descripcion: 'La Gran Muralla China es una antigua fortificación china,​ construida y reconstruida entre el siglo V a. C. y el siglo XVI para proteger la frontera norte', imagen2: 'https://previews.123rf.com/images/harodominguez/harodominguez1601/harodominguez160100034/52419851-descripci%C3%B3n-general-de-la-gran-muralla-de-china-en-un-d%C3%ADa-fr%C3%ADo.jpg'),
          FichaGaleria(name2: 'Terracotta Warriors', descripcion: 'Los Guerreros de terracota son una colección de estatuas de terracota que representan las figuras de los guerreros y caballos del ejército del autoproclamado primer emperador de China ', imagen2: 'https://images.freeimages.com/images/premium/previews/2365/23653629-ancient-terracotta-army-figures-in-xian-china.jpg'),
          FichaGaleria(name2: 'Chino antiguo', descripcion: 'El chino antiguo, también denominado chino arcaico en las obras antiguas, es la etapa más antigua registrada del idioma chino (más exactamente de las lenguas siníticas), y el ancestro lingüístico de todas las variedades del chino modernas.',  imagen2: 'https://thumbs.dreamstime.com/z/adorno-chino-antiguo-de-la-pintura-51644263.jpg'),


        ],
      ),
    );
  }

}

class FichaGaleria extends StatelessWidget{
  final String name2;
  final String descripcion;
  final String imagen2;


  const FichaGaleria({required this.name2, required this.descripcion, required this.imagen2}):super();

  @override
  Widget build(BuildContext context){
    //final ButtonStyle style =
    //ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Card(

        child: Container(
          height: 180,
          child: Row(
            children: <Widget>[
              Image(
                image: NetworkImage('$imagen2'),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(this.name2, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(this.descripcion),

                  ],
                ),
              )

            ],
          ),
        )
    );
  }
}