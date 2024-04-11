import 'package:comarquesgui/models/comarca.dart';
import 'package:comarquesgui/repository/repository_exemple.dart';
import 'package:flutter/material.dart';
import 'widgets/my_weather_info.dart';

class InfoComarcaGeneral extends StatelessWidget {
  const InfoComarcaGeneral({super.key});

  @override
  Widget build(BuildContext context) {
    Comarca comarca = RepositoryExemple.obtenirInfoComarca();
    var poblacio = comarca.poblacio;
    var latitud = comarca.latitud;
    var longitud = comarca.longitud;

    return Scaffold( // Estructura de la pantalla Material Design
        body: Center( // Centrem el contingut
          child: SingleChildScrollView( // Contenidor amb scroll per si ens n'eixim de l'espai disponible
            child: Column( // Organitzem les provincies en forma de columna
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(comarca.img.toString()),
                  Text(comarca.comarca, textAlign: TextAlign.justify,
                      style: const TextStyle(fontSize: 22, color: Colors.black,)),
                  Text(comarca.capital.toString(),
                      style: const TextStyle(fontSize: 22, color: Colors.black)),
                  SizedBox(
                    width: 300,
                    child:
                    Text(comarca.desc.toString(),textAlign: TextAlign.justify,
                        style: const TextStyle(fontSize: 16, color: Colors.black)),
                  ),
                  Divider(color: Colors.black, thickness: 4,),
                  Text("Informació básica sobre la comarca",
                      style: const TextStyle(fontSize: 22, color: Colors.black)),
                  Divider(color: Colors.black,),
                  Column(
                    children: <Widget> [
                      const MyWeatherInfo(),
                      Text('\nPoblacio: $poblacio \n', style: const TextStyle(fontSize: 22, color: Colors.black)),
                      Text('Latitud: $latitud \n', style: const TextStyle(fontSize: 22, color: Colors.black)),
                      Text('Longitud: $longitud \n', style: const TextStyle(fontSize: 22, color: Colors.black)),
                    ],
                  )
                ]

            ),
          ),
        ));
        // Agafem la comarca del repositori
       // Comarca comarca = RepositoryExemple.obtenirInfoComarca();

    return Column(
      children: [
        Image.network(comarca.img.toString()),
        Text(comarca.comarca,
            style: const TextStyle(fontSize: 22, color: Colors.white)),
        Text(comarca.capital.toString(),
            style: const TextStyle(fontSize: 22, color: Colors.white)),
        Text(comarca.desc.toString(),
            style: const TextStyle(fontSize: 22, color: Colors.white)),
      ],
    );
    // TO-DO
    // Afegir la informació següent sobre la comarca:
    // Imatge, nom, capital i descripció, de forma semblanta com es mostra a l'enunciat

    // Podeu fer ús dels ginys i contenidors que considereu oportuns (Containers, SingleChildScrollView, Columns, etc)
    // Heu de tindre en compte de no sobrepassar els límits i dibuixar fora de l'espai disponible
    // Per comprovar que no se n'eixiu, podeu provar a girar el dispositiu (si esteu fent-ho sobre Android)

    return const Placeholder();
  }
}
