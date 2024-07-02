import 'package:flutter/material.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("App Bar"),
          backgroundColor: Colors
              .transparent, //background ile birlikte olacak şekilde app barın rengini eşitlemek
          elevation: 0,

          //App barın title özelliğine center ekler
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chevron_left),
          ), //app barın sol tarafında genelde geri butonunu eklemek için kullanılır
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.email)),
          ], //Bu actions kısmı ise appbarın sağ kısmı için kullanılır
        ),
        backgroundColor: Colors.brown);
  }
}
