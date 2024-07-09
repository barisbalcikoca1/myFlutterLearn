import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModels> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Collections"),
        //         leading: const SizedBox(child: Icon(Icons.chevron_left))),
      ),
      body: ListView.builder(
        padding: PaddingUtility().paddingHorizontal,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    super.key,
    required CollectionModels model,
  }) : _model = model;

  final CollectionModels _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingAll,
          child: Column(
            children: [
              //Expanded olmasaydı patlardı
              Expanded(
                  child: Image.asset(
                _model.imagePath,
                fit: BoxFit.cover,
              )),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text(_model.title), Text("${_model.price}")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModels {
  final String imagePath;
  final String title;
  final int price;

  CollectionModels(
      {required this.imagePath, required this.title, required this.price});
}

class CollectionItems {
  late final List<CollectionModels> items;
  final String _imagePath =
      "/Users/barisbalcikoca/myFlutterLearn/myFlutterLearn/assets/demos.png";

  CollectionItems() {
    items = [
      CollectionModels(imagePath: _imagePath, title: "Resim 1", price: 5),
      CollectionModels(imagePath: _imagePath, title: "Resim 2", price: 15),
      CollectionModels(imagePath: _imagePath, title: "Resim 3", price: 500),
    ];
  }
}

class PaddingUtility {
  final paddingAll = const EdgeInsets.all(20.0);
  final paddingLeft = const EdgeInsets.all(20.0);
  final paddingBottom = const EdgeInsets.only(bottom: 35);
  final paddingTop = const EdgeInsets.only(top: 15);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}
