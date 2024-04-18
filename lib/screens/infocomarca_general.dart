import 'package:comarquesgui/models/comarca.dart';
import 'package:comarquesgui/repository/repository_exemple.dart';
import 'package:flutter/material.dart';
import 'widgets/my_weather_info.dart';

class InfoComarcaGeneral extends StatelessWidget {

  // TO-DO
  // Afegir la propietat comarca, de tipus Comarca? i proporcionar-la
  // al constructor com a argument amb nom.

  const InfoComarcaGeneral({super.key, required this.comarca});

  final String comarca;

  @override
  Widget build(BuildContext context) {
    // TO-DO
    // Ja tenim aquesta informació en la propietat Comarca,
    //proporcionada om a argument, pel que haurem d'eliminar esta línia.
    Comarca? comarcaInfo = RepositoryExemple.obtenirInfoComarca(comarca);
    // Compte que ara comarca pot ser nul, pel que haurem de fer ús
    // posteriormen de l'accés amb nuls ?. i de l'operador ?? per
    // assignar valors en cas que siguen nuls.

    // TO-DO
    // Com que tenim l'Scaffold en InfoComarca i aquest és
    // un giny que serà part del seu body, haurem d'eliminar
    // aquest Scaffold


    //Comarca comarca = RepositoryExemple.obtenirInfoComarca();
    /* var poblacio = comarca.poblacio;
    var latitud = comarca.latitud;
    var longitud = comarca.longitud;*/

    return Scaffold(
      // Estructura de la pantalla Material Design
      appBar: AppBar(),
      body: Center(
        // Centrem el contingut
        child: SingleChildScrollView(
          // Contenidor amb scroll per si ens n'eixim de l'espai disponible
            child: Column(
              // Organitzem les provincies en forma de columna
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
            Column(children: <Widget>[
            SizedBox(height: 32.0),
            ])
        ]),
      ),
    ),
    floatingActionButton: FloatingActionButton(
    onPressed: () {},
    ),
    bottomNavigationBar: BottomAppBar(),
    );
  }
}
