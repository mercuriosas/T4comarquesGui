import 'package:comarquesgui/models/comarca.dart';
import 'package:comarquesgui/repository/repository_exemple.dart';
import 'package:flutter/material.dart';

class ComarquesScreen extends StatelessWidget {
  const ComarquesScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          // Proporciona a _creaLlistaComarques la llista de comarques d'Alacant
          child:
              _creaLlistaComarques(RepositoryExemple.obtenirComarques())), ////
    );
  }

  _creaLlistaComarques(List<dynamic> comarques) {
    // Rebem la llista de JSON amb el nom i la imatge (img) de cada comarca
    return ListView.builder(
        itemCount: comarques.length,
        itemBuilder: (context, int position) {
          return ComarcaCard(
              img: comarques[position]['img'],
              comarca: comarques[position]['nom'] // children(
              );
        });

    // TO-DO
    // Caldrà fer ús d'un ListView.builder per recórrer la llista
    // i generar un giny personalitzat de tipus ComarcaCard, amb la imatge i el nom.
    return const Placeholder();
  }
}

class ComarcaCard extends StatelessWidget {
  // Aquest giny rebrà dos arguments amb nom per construir-se:
  // la imatge (img) i el nom de la comarca (comarca)
  const ComarcaCard({
    super.key,
    required this.img,
    required this.comarca,
  });

  final String img;
  final String comarca;

  @override
  Widget build(BuildContext context) {
    // TO-DO
    // Retorna un giny de tipus Card, amb el disseny que desitgeu, però
    // que mostre la imatge (obtinguda d'Internet a partir de la url)
    // i el nom de la comarca.
    // TO-DO
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Stack(alignment: Alignment.bottomLeft, children: [
        Image.network(img, height:200, width:400, fit: BoxFit.fill),
        Text(comarca, style: Theme.of(context).textTheme.displayMedium,),
      ]),
    );
    return const Placeholder();
  }
}
