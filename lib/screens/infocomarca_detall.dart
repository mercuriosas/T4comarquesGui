import 'package:comarquesgui/models/comarca.dart';
import 'package:comarquesgui/repository/repository_exemple.dart';
import 'package:comarquesgui/screens/widgets/my_weather_info.dart';
import 'package:flutter/material.dart';

class InfoComarcaDetall extends StatelessWidget {

  // TO-DO
  // Afegir la propietat comarca, de tipus Comarca? i proporcionar-la
  // al constructor com a argument amb nom.


  const InfoComarcaDetall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    // TO-DO
    // Ja tenim aquesta informació en la propietat Comarca,
    //proporcionada om a argument, pel que haurem d'eliminar esta línia.

    Comarca? comarca = RepositoryExemple.obtenirInfoComarca("Alacant");
    // Compte que ara comarca pot ser nul, pel que haurem de fer ús
    // posteriormen de l'accés amb nuls ?. i de l'operador ?? per
    // assignar valors en cas que siguen nuls.

    //Comarca comarca = RepositoryExemple.obtenirInfoComarca();
   /* var poblacio = comarca.poblacio;
    var latitud = comarca.latitud;
    var longitud = comarca.longitud;*/

    // TO-DO
    // Com que tenim l'Scaffold en InfoComarca i aquest és
    // un giny que serà part del seu body, haurem d'eliminar
    // aquest Scaffold

    return Scaffold( // Estructura de la pantalla Material Design
        body: Center( // Centrem el contingut
          child: SingleChildScrollView( // Contenidor amb scroll per si ens n'eixim de l'espai disponible
            child: Column( // Organitzem les provincies en forma de columna
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Divider(color: Colors.black,),
            Column(
                children: <Widget>[
                  const MyWeatherInfo(),
                  /*Text('\nPoblacio: $poblacio \n', style: const TextStyle(
                      fontSize: 22, color: Colors.black)),
                  Text('Latitud: $latitud \n', style: const TextStyle(
                      fontSize: 22, color: Colors.black)),
                  Text('Longitud: $longitud \n', style: const TextStyle(
                      fontSize: 22, color: Colors.black)),*/
                ]
            ),
          ]),
        )
    ));
  }
}
