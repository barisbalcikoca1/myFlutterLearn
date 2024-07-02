import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});
  final String appBarText = "Container Sized Box Learn";
  final double deger = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(appBarText)),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              //double.infinity --> ebeveynin sunduğu, izin verdiği alan kadar kaplar. Boyutu ebeveynin sunduğu kadarıdır.
              //MediaQuery ise ekranın boyutuna göre kaplar.
              height: 100,
              child: Text(
                "data" * 50,
              ),
            ),
            const SizedBox
                .shrink(), //Boş bir sizedBox kullanmak için SizedBox.shrink() kullanılor
            //Bu arkadaşı kullanırken aklında hep şu olsun (SizedBox height : 0, weight : 0)'ın aynısı
            //Bir widget düşün--> Eğer boşsa shrink atanırsa o widget gözükmez.
            SizedBox.square(
              dimension: 90,
              child: Text("deneme" * 10),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 50,
              height: 50,
              //padding: const EdgeInsets.all(10),
              //margin: const EdgeInsets.all(10),
              decoration: CustomBoxDecoration
                  .boxDecoration, //Bu fotoğrafların dışında bulunan viynet gibi bir özellik ekler
              child: Text("aa" * 10),
            )
          ],
        ),
      ),
    );
  }
}

class CustomBoxDecoration {
  static BoxDecoration boxDecoration = BoxDecoration(
      color: Colors
          .red, //Containerde color kullanılacaksa decoration içerisinde kullanılır.
      //shape: BoxShape.circle,
      gradient: const LinearGradient(colors: [
        Colors.red,
        Colors.blue
      ]), //yeşilden başla maviye doğru ton al demek için kullanıyoruz
      border: Border.all(width: 5, color: Colors.black));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            gradient: const LinearGradient(colors: [
              Colors.green,
              Colors.blue
            ]), //yeşilden başla maviye doğru ton al demek için kullanıyoruz
            border: Border.all(
                width: 5,
                color: Colors
                    .black)); //Bu fotoğrafların dışında bulunan viynet gibi bir özellik ekler//Bu fotoğrafların dış)
}
