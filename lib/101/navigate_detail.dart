import 'package:flutter/material.dart';

class NavigateDetail extends StatefulWidget {
  const NavigateDetail({super.key});

  @override
  State<NavigateDetail> createState() => _NavigateDetailState();
}

class _NavigateDetailState extends State<NavigateDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigate Detail Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(true);
              // Navigator.pop(
              //   context,
              // ); //Bu eski sayfaya yönlendirmeyi sağlar
            },
            child: const Text("Geri Dön Tuşu")),
      ),
    );
  }
}
