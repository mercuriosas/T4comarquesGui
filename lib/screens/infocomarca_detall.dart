import 'package:comarquesgui/models/comarca.dart';
import 'package:comarquesgui/repository/repository_exemple.dart';
import 'package:comarquesgui/screens/widgets/my_weather_info.dart';
import 'package:flutter/material.dart';

class InfoComarcaDetall extends StatelessWidget {

  // TO-DO
  // Afegir la propietat comarca, de tipus Comarca? i proporcionar-la
  // al constructor com a argument amb nom.


  const InfoComarcaDetall({
    super.key, required this.comarca,
  });
  final Comarca? comarca;

  @override
  Widget build(BuildContext context) {

    var poblacio = comarca?.poblacio;
    var latitud = comarca?.latitud;
    var longitud = comarca?.longitud;

    return Scaffold( // Estructura de la pantalla Material Design
        body:  Center(
          // Centrem el contingut
          child: SingleChildScrollView(
            // Contenidor amb scroll per si ens n'eixim de l'espai disponible
              child: Column(
                // Organitzem les provincies en forma de columna
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: <Widget> [
                        const MyWeatherInfo(),
                        Text('\nPoblacio: $poblacio \n', style: const TextStyle(fontSize: 22, color: Colors.black)),
                        Text('Latitud: $latitud \n', style: const TextStyle(fontSize: 22, color: Colors.black)),
                        Text('Longitud: $longitud \n', style: const TextStyle(fontSize: 22, color: Colors.black)),
                      ],
                    )
                  ])),
        ),
    );
    /*floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),*/
    return const Placeholder();
  }
}

