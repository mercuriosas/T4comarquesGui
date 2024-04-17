import 'package:comarquesgui/models/comarca.dart';
import 'package:comarquesgui/repository/repository_exemple.dart';
import 'package:flutter/material.dart';

class ComarquesScreen extends StatelessWidget {
  // ComarquesScreen necessita un nom de provincia
  // TO-DO:
  // Afegir un argument amb nom al constructor amb el nom de la provincia
  // Afegir també una propietat a la classe de tipus "final String" a la classe pe a la provincia
  // const ComarquesScreen();

  const ComarquesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // TO-DO:
      // Incorporar un AppBar per a que mostre el text
      // "Comarques de..." i el nom de la província seleccionada.

      body: Center(
        // TO-DO:
        // Crear la llista de comarques amb les comarques
        // corresponents a la província actual (passar en lloc d'alacant
        // la propietat amb el nom de la província que heu declarat)

          child: _creaLlistaComarques(RepositoryExemple.obtenirComarques("Alacant"))
      ), ////
    );
  }

  _creaLlistaComarques(List<dynamic> comarques) {
    return ListView.builder(
      itemCount: comarques.length,
      itemBuilder: (BuildContext context, int index) {
        if (comarques.isNotEmpty) {
          String img = comarques[index]["img"];
          String comarca = comarques[index]["nom"];

          return ComarcaCard(img: img, comarca: comarca);

        } else {
          return const Center(
            child: Text("La llista és buida"),
          );
        }
      },
    );
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

    // TO-DO:
    // Envoltar aquest Card amb un GestureDetector, de manera
    // que quan fem clic en ell, (event onTap), "naveguem" fins la pantalla
    // amb la informació sobre la comarca seleccionada.
    // Aquesta nova pantalla serà InfoComarca (fitxer infocomarca.dart),
    // que haureu d'implementar.

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
