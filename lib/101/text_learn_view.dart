import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});

  final String customerName = "Barış";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text("Text Learn View"))),
        body: Center(
            //buradaki center yatayda işlem yapar.
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //Dikeyde center yapar
          children: [
            Text("İsim: $customerName",
                style: DefaultTextStyle.defaultTextStyle),
            Text(
              customerName,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: MyProjectOwnColors
                      .redColor), //?. vererek headlineMedium'un tüm özelliklerini kullan fakat copyWith
              //ile verdiklerimi üzerine ekle demektir
            )
          ],
        )));
  }
}

class DefaultTextStyle {
  static TextStyle defaultTextStyle = const TextStyle(
      color: Colors.black,
      letterSpacing: 3,
      fontSize: 16,
      decoration: TextDecoration.underline, //Alt çzigi koymak
      fontWeight: FontWeight.w600);
}

class MyProjectOwnColors {
  static Color yellowColor = Colors.yellow;
  static Color redColor = Colors.red;
}
