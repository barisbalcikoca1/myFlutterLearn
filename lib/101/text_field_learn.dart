import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field Learn"),
      ),
      body: const Column(
        children: [
          TextField(
            maxLength: 20, //daha fazla karakter giremez
            cursorErrorColor: Colors.black,
            keyboardType: TextInputType
                .number, //keyboardType giriş tipini number yaptım fakat .,-space kullanılmaktadır
            decoration: InputDecoration(
                icon: Icon(Icons.safety_check),
                //textfield dışına sola icon koymaya yarıyor.
                errorMaxLines: 4,
                prefixIcon: Icon(Icons //ınputText içerisi
                    .abc), //Input decoration adı altında PrefixIcon kullanıcının sol tarafına icon koymasını sağlar
                border: OutlineInputBorder(),
                label: Text("Burası Label"),
                //labelText: "Label Text",
                hintText: "Hint kısmı"), //Bir kutu içerinde olmasını istiyorsak
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            autofocus: true,
          )
        ],
      ),
    );
  }
}
