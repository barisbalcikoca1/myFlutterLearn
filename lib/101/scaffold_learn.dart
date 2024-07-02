import 'package:flutter/material.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});

  final String appBarName = "Scaffold Learn";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(appBarName)),
      ),
      backgroundColor: Colors.blueAccent,

      drawer:
          const Drawer(), //Ekranın en sol üstünde hamburger menü denilen bir şey oluşturur

      floatingActionButton: FloatingActionButton.extended(
        //extend yazmasaydım label yazamazdım
        onPressed: () {
          //floatActionButton butonuna tıklandığında aşağıdan yukarı açılır bir bottomSheet eklendi yüksekliği 200
          showModalBottomSheet(
              context: context,
              builder: (context) => const SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Text("jhjhj"),
                  ));
        },
        icon: const Icon(Icons.navigation),
        label: const Text("Float Action"),
        //floatingActionButton child aldığı için ıcon koyulabilir.
        //aynı zamanda eğer yanına yazı yazmak istersek LABEL yazmak gerekir. Fakat bunun için EXTENDED olması gerekmtekdir.
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, //FloatingActionButtonLocation. 'dan sonra centerDocked yerine bir sürü eklenti koyulabilir.
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "add"),
          BottomNavigationBarItem(icon: Icon(Icons.remove), label: "remove")
        ],
      ),
    );
  }
}
