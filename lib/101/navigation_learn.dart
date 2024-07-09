import 'package:flutter/material.dart';
import 'package:flutter_learn/101/navigate_detail.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> {
  List<int> selectedItems = [];

  void addSelected(int index) {
    setState(() {
      selectedItems.add(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Learn Dart"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return TextButton(
          onPressed: () async {
            final response =
                await navigateToWidget<bool>(context, const NavigateDetail());

            if (response == true) {
              addSelected(index);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              color: selectedItems.contains(index) ? Colors.green : Colors.red,
            ),
          ),
        );
      }),
    );
  }
}

Future<T?> navigateToWidget<T>(BuildContext context, Widget widget) {
  return Navigator.of(context).push<T>(
    MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true),
  ); //fullScreenDialog sanaki aşağıdan yukarı açılmış gibi oluyor. Ekstra olarak çarpı butonu ile geliyor geri butonu ile değil.
}
