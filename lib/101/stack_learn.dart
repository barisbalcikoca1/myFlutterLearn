import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_image.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stack Learn"),
        ),
        body: const Column(
          children: [
            Expanded(
                flex: 4,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned.fill(
                      bottom: 25,
                      child: RandomImage(),
                    ),
                    Positioned(
                        height: 50,
                        width: 200,
                        bottom: 0,
                        child: SizedBox(
                          child: Card(
                            color: Colors.white,
                          ),
                        ))
                  ],
                )),
            Spacer(
              flex: 6,
            )
          ],
        ));
  }
}
