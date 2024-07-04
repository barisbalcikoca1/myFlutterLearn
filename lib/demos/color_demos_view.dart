import 'package:flutter/material.dart';

class ColorDemosView extends StatefulWidget {
  const ColorDemosView({super.key});
  @override
  State<ColorDemosView> createState() => _ColorDemosViewState();
}

class _ColorDemosViewState extends State<ColorDemosView> {
  Color? _backgroundColor;
  String? _textColorName;
  void changeBackgroundColor(Color color, String colorName) {
    setState(() {
      _backgroundColor = color;
      _textColorName = colorName;
    });
  }

  @override
  void initState() {
    //bunu yapmazsam null gelmektedir.
    _backgroundColor ??= Colors.transparent;
    _textColorName ??= "Boş";
    super.initState();
    //debug yapmak gibi bir durum
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Color Demos View")),
      backgroundColor: _backgroundColor,
      bottomNavigationBar:
          BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.red), label: "Red"),
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.yellow), label: "Yellow"),
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.blue), label: "Blue")
      ]),
      body: Center(child: Text("$_textColorName")),
    );
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow, "YELLOW");
    } else if (value == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blue, "BLUE");
    } else if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red, "RED");
    } else {
      changeBackgroundColor(Colors.transparent, "BOŞ");
    }
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
