import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  final String rondomImageUrl = "https://picsum.photos/200/300";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Builder Learn"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        print(index);
        return SizedBox(
          height: 200,
          child: Column(
            //Column kullanıldığı için bazen sayfaya sığmama sorunları ile karşılaşabiriliz.
            //Bu gibi durumlarda Sayfaya sığmayan Column elemanının Expanded ile sarılması gerekmektedir.
            children: [
              Expanded(child: Image.network(rondomImageUrl)),
              Text("$index")
            ],
          ),
        );
      }),
    );
  }
}
