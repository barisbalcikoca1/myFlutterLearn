import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column and Row"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            Row(
              children: [
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
