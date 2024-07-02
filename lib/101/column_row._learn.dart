import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column and Row"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.greenAccent[100],
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.black45,
              )),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
          const Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, //Aralıklarının eşit derece bırakılması için kullanılır
              children: [Text("Baris"), Text("Baris2"), Text("Baris3")],
            ),
          ),
        ],
      ),
    );
  }
}
