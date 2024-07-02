import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

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
                  title: const Text("My Card"),
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
