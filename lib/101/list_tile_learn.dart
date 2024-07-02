import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  final imageUrl = "https://picsum.photos/200/300";
  @override
  Widget build(BuildContext context) {
    // int deger = 0;
    return Scaffold(
        appBar: AppBar(
          title: const Text("List Tile Learn"),
        ),
        body: Column(
          children: [
            Card(
              //ListTile'ı Card ile sarmaladım.
              child: ListTile(
                  title: const RandomImage(
                    height: 85,
                  ),
                  subtitle: const Text("İşte Benim Kartımın Özellikleri"),
                  //dense: true, //Kendi içinde bulunan paddingleri siler
                  onTap: () {
                    // deger += 1;
                    // print("Tıkladım $deger");
                  }, //Kardın tamamının tıklanmasını sağlar
                  leading: const Icon(Icons.money), //Soluna koyulur
                  trailing: const Icon(Icons.send)),
            ) //Sağına koyar
          ],
        ));
  }
}
