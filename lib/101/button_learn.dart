import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Button Learn")),
      ),
      body: Center(
        //Center yatayda MainAxixAlignment dikeyde
        child: Column(
          children: [
            const ElevatedButton(onPressed: null, child: Text("Enabled")),
            TextButton(onPressed: () {}, child: const Text("TextButton")),
            OutlinedButton(
                onPressed: () {}, child: const Text("Outlined Button")),
            InkWell(
              onTap: () {},
              child: const Text("Tıklanabilir yazı"),
            )
          ],
        ),
      ),
    );
  }
}
