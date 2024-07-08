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
          const FittedBox(child: Text("Merhaba")),
          Container(
            height: 250,
            color: Colors.red,
          ),
          const Divider(
            height: 3,
            color: Colors.black,
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 250,
                  color: Colors.red,
                ),
                Container(
                  width: 250,
                  color: Colors.yellow,
                ),
                Container(
                  width: 250,
                  color: Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
