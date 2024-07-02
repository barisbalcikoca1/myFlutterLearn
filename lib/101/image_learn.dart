import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  final String rondomImageUrl = "https://picsum.photos/200/300";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Learn"),
        systemOverlayStyle: SystemUiOverlayStyle
            .light, //emulatörde en üstte bulunan saatlerin pilin olduğu kısmın tipini belirler
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageAsset(
            imagePath: ImageItems().ahlPayLogo,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomImageAsset(
            imagePath: ImageItems().ahlPayVerticalLogo,
            height: 50,
            width: 50,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomImageNetwork(
            rondomImageUrl: rondomImageUrl,
            width: 60,
            height: 10,
          ),
        ],
      ),
    );
  }
}

class CustomImageNetwork extends StatelessWidget {
  const CustomImageNetwork(
      {super.key,
      required this.rondomImageUrl,
      this.height = 10,
      this.width = double.infinity});

  final String rondomImageUrl;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      rondomImageUrl,
      width: double.infinity,
      height: 250,
      errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
    );
  }
}

class CustomImageAsset extends StatelessWidget {
  const CustomImageAsset(
      {super.key,
      required this.imagePath,
      this.height = 200,
      this.width = double.infinity});

  final String imagePath;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: height,
      width: width,
      //fit: BoxFit.contain,
    );
  }
}

class ImageItems {
  final String ahlPayVerticalLogo = "assets/logo_vertical.png";
  final String ahlPayLogo = "assets/logo.png";
}
