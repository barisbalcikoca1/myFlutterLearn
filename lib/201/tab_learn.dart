import 'package:flutter/material.dart';
import 'package:flutter_learn/101/image_learn.dart';
import 'package:flutter_learn/demos/my_collections.demos.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        //FloatingActionButton
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.navigation),
        ),
        //FloatingActionButton lokasyonu ortada olması için
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        extendBody: true, //Arka planla birlikte kaplasın
        bottomNavigationBar: BottomAppBar(
          //color: Colors.black,
          notchMargin: 25,
          shape: const CircularNotchedRectangle(),
          child: customTabBar(),
        ),
        appBar: AppBar(title: const Text("Tab Learn"), bottom: customTabBar()),

        body: const TabBarView(
          physics:
              NeverScrollableScrollPhysics(), //Sağa Sola Kaydırarak gitmeyi kapatmak için kullanılır.
          children: [ImageLearn(), MyCollectionsDemos()],
        ),
      ),
    );
  }

  TabBar customTabBar() {
    return const TabBar(
        indicatorColor: Colors
            .blue, //indicatorColor dediğimiz şey tabbarlarda bulunan arka planın rengini değiştirmektedir.
        labelColor: Colors
            .black, //tabbarda bulunan label'ın text rengini değiştirmektedir.
        unselectedLabelColor:
            Colors.brown, //Seçili olmayan label'ın text rengi ne olsun
        indicatorSize: TabBarIndicatorSize
            .tab, //Tabbarın genişliği kadar olsun demek. .tab yerine .label yazarsak label kadar olur
        tabs: [
          Tab(
            text: "Page1",
          ),
          Tab(
            text: "Page2",
          )
        ]);
  }
}
