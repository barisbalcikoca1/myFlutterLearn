// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class StatlesLearn extends StatelessWidget {
  const StatlesLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless Learn"),
      ),
      body: const Column(
        children: [
          TitleTextWidget(customText: "deneme"),
          TitleTextWidget(
            customText: "deneme2",
          )
        ],
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({
    super.key,
    required this.customText,
  });

  final String customText;

  @override
  Widget build(BuildContext context) {
    return Text(customText);
  }
}
