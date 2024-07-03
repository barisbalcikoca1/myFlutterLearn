import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.messages});
  final String messages;

  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _messages = "";

  late bool _isOdd = false;

  @override
  //Daha sayfa çizilmeden çalışan bir şey initState()
  void initState() {
    super.initState();
    _messages = widget.messages;
    _isOdd = widget.messages.length.isOdd;
    if (_isOdd) {
      _messages += " Tek";
    } else {
      _messages += " Çift";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Statefull Life Cycle Learn"),
        ),
        //Eğer messages içeriisndeki veri tek harfli ise TextButton çift ise lenght'i ElevatedButton çalışıyor.
        body: _isOdd
            ? TextButton(onPressed: () {}, child: Text(_messages))
            : ElevatedButton(onPressed: () {}, child: Text(_messages)));
  }
}
