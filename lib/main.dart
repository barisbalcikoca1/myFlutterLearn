import 'package:flutter/material.dart';
import 'package:flutter_learn/201/services/services_post_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //Tüm uygulamanın başladığı konum
        //CupertinoApp --> IOS Compenentlerine ait bir yaklaşım sunar.
        title:
            'Flutter Demo', //Android tarafında kod arkaya alındığında koda isim verilir bu isim buradan verilir.

        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
              centerTitle:
                  true), //bu uygulamada oluşcak tüm app barlar ortadan başlayacak default false Android için
        ),
        home: const ServicesPostLearnView());
  }
}
