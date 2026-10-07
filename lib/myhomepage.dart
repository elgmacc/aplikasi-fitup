import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
TextEditingController inputNama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(title: Text("Fitup")),
      backgroundColor : Color.fromARGB(255, 237, 237, 237),
      body:Column(
        children: [ 
          Center(
            child: Container(
              width: 300,
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 255, 187, 210),
                hintText: 'Masukan nama kamu',
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(49))
                ),
              ),
          controller: inputNama,
          onFieldSubmitted: (values) {
            inputNama.text = values;
            },
          ),
          ),
          ),
          Padding(
            padding: EdgeInsets.all(16)
          ),

          ElevatedButton(
            child: Text("Tampilkan Nama"),
            onPressed: ()  {
              print(inputNama.text);
            },
          )
        ]
      )
    );
  }
}