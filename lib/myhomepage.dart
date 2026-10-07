import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // Controller untuk input nama
  TextEditingController inputNama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // AppBar halaman Home
      appBar: AppBar(
        title: const Text("Fitup"),
      ),

      backgroundColor: const Color.fromARGB(255, 237, 237, 237),

      body: Column(
        children: [

          // Input nama
          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                controller: inputNama,

                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 255, 187, 210),
                  hintText: 'Masukan nama kamu',
                  filled: true,

                  // Icon nama
                  prefixIcon: Icon(Icons.person),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(49),
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Tombol tampilkan nama
          ElevatedButton(
            child: const Text("Tampilkan Nama"),

            onPressed: () {

              // Menampilkan nama di terminal
              print(inputNama.text);
            },
          ),
        ],
      ),
    );
  }
}