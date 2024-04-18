import 'package:comarquesgui/models/comarca.dart';
import 'package:comarquesgui/repository/repository_exemple.dart';
import 'package:flutter/material.dart';
import 'widgets/my_weather_info.dart';

class InfoComarcaGeneral extends StatelessWidget {

  // TO-DO
  // Afegir la propietat comarca, de tipus Comarca? i proporcionar-la
  // al constructor com a argument amb nom.

  const InfoComarcaGeneral({super.key, required this.comarca});

  final Comarca? comarca;

  @override
  Widget build(BuildContext context) {

    print(comarca?.comarca);

    print("imagen " + comarca!.img.toString());

    return Scaffold(
      // Estructura de la pantalla Material Design
       body: Center(
        // Centrem el contingut
        child: SingleChildScrollView(
          // Contenidor amb scroll per si ens n'eixim de l'espai disponible
            child: Column(
              // Organitzem les provincies en forma de columna
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(comarca!.img.toString()),
                  Text(comarca!.comarca,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      )),
                  Text(comarca!.capital.toString(),
                      style: const TextStyle(fontSize: 22, color: Colors.black)),
                  SizedBox(
                    width: 300,
                    child: Text(comarca!.desc.toString(),
                        textAlign: TextAlign.justify,
                        style: const TextStyle(fontSize: 14, color: Colors.black)),
                  ),

            ])
        ),
      ),
    );

  }
}
