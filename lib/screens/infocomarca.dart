import 'package:comarquesgui/models/comarca.dart';
import 'package:comarquesgui/repository/repository_exemple.dart';
import 'package:comarquesgui/screens/infocomarca_detall.dart';
import 'package:comarquesgui/screens/infocomarca_general.dart';
import 'package:flutter/material.dart';
import 'widgets/my_weather_info.dart';

class InfoComarca extends StatefulWidget {
  // TO-DO
  // Afegir la propietat comarca, de tipus Comarca? i proporcionar-la
  // al constructor com a argument amb nom.

  const InfoComarca({super.key, required this.comarca});

  final String comarca;

  @override
  State<InfoComarca> createState() => _InfoComarcaState();
}

class _InfoComarcaState extends State<InfoComarca>{
  int indexActual = 0;

  @override
  Widget build(BuildContext context) {
    Comarca? comarcaInfo = RepositoryExemple.obtenirInfoComarca(widget.comarca!);
    print(comarcaInfo!.img.toString());

    return Scaffold(
      // Estructura de la pantalla Material Design
      appBar: AppBar(
        title: [
          const Text('Informació General'),
          const Text('Població i Oratge')
        ][indexActual],
      ),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: InfoComarcaGeneral(comarca:comarcaInfo),
        ),
        Container(
          alignment: Alignment.center,
          child: InfoComarcaDetall(comarca: comarcaInfo,),
        ),
      ][indexActual],
      bottomNavigationBar:NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            indexActual = index;
          });
        },
        selectedIndex: indexActual,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Informació General',
          ),
          NavigationDestination(
            icon: Icon(Icons.people_outline),
            selectedIcon: Icon(Icons.people),
            label: 'Informació Detallada',
          ),
        ],
      ),
    );
    /*floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),*/
    return const Placeholder();
  }
}
