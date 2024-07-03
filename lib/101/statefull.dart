import 'package:flutter/material.dart';
import 'package:flutter_learn/product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  //Dışarısı ile haberleşilen bir durum

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  //Asıl çalıştırılan kısım
  int _countValue = 0;

  int _counterCustom = 0;

  final String _merhabaText = LanguageItems.merhabaText;

  void _updateValue(bool isIncrenment) {
    if (isIncrenment) {
      _countValue = _countValue + 1;
    } else {
      _countValue -= 1;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Statefull Learn"),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _increnmentButton(),
          _deincrenmentButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            "$_countValue",
            style: Theme.of(context).textTheme.headlineMedium,
          )),
          const Placeholder(),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _counterCustom++;
                });
              },
              child: Text("$_merhabaText $_counterCustom"))
        ],
      ),
    );
  }

  FloatingActionButton _deincrenmentButton() {
    return FloatingActionButton(
        onPressed: () {
          _updateValue(false);
        },
        child: const Icon(Icons.remove));
  }

  Padding _increnmentButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateValue(true);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
