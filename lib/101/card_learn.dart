import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Learn"),
      ),
      body: const Column(
        children: [
          CustomCardSpecialists(
            customColor: Colors.green,
            height: 250,
            width: 400,
          ),
          // Card(
          //     child: Stack(
          //   children: [
          //     SizedBox(
          //       height: 20,
          //       width: 20,
          //     ),
          //     Text("Denemeler")
          //   ],
          // ))
          CustomCardSpecialists(customColor: Colors.black)
        ],
      ),
    );
  }
}

class CustomCardSpecialists extends StatelessWidget {
  const CustomCardSpecialists({
    super.key,
    required this.customColor, //dışardan kesinlikle belirtilecek bir renk istedim
    this.height =
        200, //zorunlu olmayan opsiyonel paramatere olarak yükseklik ve genişliği aldım
    this.width = 200,
  });

  final Color customColor; //rengi final Colordan alacak şekilde belirttim.
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: const StadiumBorder(),
        margin: CardMargins.cardMargin,
        color: customColor, //rengi burada aldım.
        child: Stack(
          children: [
            SizedBox(
              height: height,
              width: width,
              child: const Center(
                  child:
                      Text("Denemler", style: TextStyle(color: Colors.amber))),
            ),
          ],
        ));
  }
}

class CardMargins {
  static const cardMargin = EdgeInsets.all(10);
}
