import 'package:comarquesgui/models/comarca.dart';
import 'package:comarquesgui/repository/repository_exemple.dart';
import 'package:comarquesgui/screens/infocomarca_detall.dart';
import 'package:comarquesgui/screens/infocomarca_general.dart';
import 'package:flutter/material.dart';

// Aquesta classe implementarà la vista amb la
// informació completa sobre la comarca, fent ús
// d'un component NavigationBar.
// Disposeu de l'explicació d'aquest component a la
// secció "Navigation Bar" del punt "4. Ginys de Navegació"
// de la unitat, i un exemple complet al gist https://dartpad.dev/?id=e806d5bc2e934a662726eacab320c497

class InfoComarcaScreen extends StatefulWidget {

  const InfoComarcaScreen(String nom, {super.key});
  final String nomComarca="";

  @override
  State<InfoComarcaScreen> createState() => _InfoComarcaScreenState();
}



class _InfoComarcaScreenState extends State<InfoComarcaScreen> {

  Comarca? comarca = RepositoryExemple.obtenirInfoComarca("Alacant");

  // TO-DO:
  // Definir una propietat que faça d´index de la pantalla actual per al NavigationBar
  // Definir un objecte de tipus Comarca? per guardar la informació d'aquesta

  // Nota: També podríem treballar amb el nom de la comarca, i proporcionar-lo
  // als ginys infoComarcaGeneral i infoComarcaDetall, però en eixe cas, després
  // caldria obtenir la informació de la comarca dos vegades.

  // TO-DO:
  // Crea el mètode initState per inicialitzar l'estat,
  // de manera que carregues aci la informació sobre la comarca
  // (hauràs de fer ús del mètode obtenirInfoComarca i proporcionar-li
  // la propietat per al nom de la comarca que has definit a la classe
  // InfoComarcaScreen. Això ho faràs a través de la propietat widget
  // de l'estat (widget.nom_de_la_propietat) )

  // Aquesta Comarca que obtindràs, la proporcionaràs després
  // als ginys InfoComarcaGeneral i InfoComarcaDetall.
  // Nota: També podríem treballar amb el nom de la comarca, i proporcionar-lo
  // als ginys infoComarcaGeneral i infoComarcaDetall, però en eixe cas, després
  // caldria obtenir la informació de la comarca dos vegades.


  @override
  Widget build(BuildContext context) {

   return Scaffold( // Estructura de la pantalla Material Design
        body: Center( // Centrem el contingut
            child: SingleChildScrollView( // Contenidor amb scroll per si ens n'eixim de l'espai disponible
              child: Column( // Organitzem les provincies en forma de columna
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Divider(color: Colors.black,),
                    Column(
                        children: <Widget>[
                        ]
                    ),
                  ]),
            )
        ));
   /*

  Aci crearem un Scaffold que contindrà:

    * Un AppBar que mostrarà el text "Informació General"
      o "Població i Oratge", segons el destí que s'estiga mostrant.

    * Una barra de navegació inferior (bottomNavigationBar),
      amb dues destinacions:
        - "Informació General", marcada, per exemple amb la icona
          "Icons.info:outline" per defecte i "Icons.info" quan està seleccionada
        - "Informació Detallada", amb la icona "Icons.wb_sunny_outlined"
           per defecte i "icons.sunny" per a quan està seleccionada.

    * Un body, que segons la destinació en què es trobe mostrarà:
      - El giny InfoComarcaGeneral, proporionant-li la comarca en què estem
      - El giny InfoComarcaDetall, proporcionant-li tmabé la comarca.

  */

  }
}
