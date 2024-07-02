import 'package:flutter/material.dart';

class StatfulLearn extends StatefulWidget {
  const StatfulLearn({super.key});

  @override
  State<StatfulLearn> createState() => _StatfulLearnState();
}

class _StatfulLearnState extends State<StatfulLearn> {
  int _countValue = 0;

  int _counterCustom = 0;

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
              child: Text("Merhaba $_counterCustom"))
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
