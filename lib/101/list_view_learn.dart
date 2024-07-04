import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List View Learn")),
      body: ListView(
        children: [
          Text(
            "Merhaba",
            style: Theme.of(context).textTheme.,
          )
        ],
      ),
    );
  }
}
