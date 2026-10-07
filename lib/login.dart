import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // Controller untuk mengambil input username
  TextEditingController inputUsername = TextEditingController();

  // Controller untuk mengambil input password
  TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),

      backgroundColor: const Color.fromARGB(255, 237, 237, 237),

      body: Column(
        children: [

          // Gambar/logo
          Center(
            child: Image(
              image: const AssetImage('asset/hammy.png'),
              width: 200,
              height: 200,
            ),
          ),

          // Input username
          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                controller: inputUsername,

                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 255, 187, 210),
                  filled: true,

                  hintText: 'Masukan username kamu',

                  // ICON USERNAME
                  prefixIcon: const Icon(Icons.person),

                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(49),
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Input password
          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                controller: inputPassword,

                // Membuat password menjadi titik-titik
                obscureText: true,

                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 255, 187, 210),
                  filled: true,

                  hintText: 'Masukan password kamu',

                  // ICON PASSWORD
                  prefixIcon: const Icon(Icons.lock),

                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(49),
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Tombol Login
          ElevatedButton(
            child: const Text("Login"),

            onPressed: () {

              // Mengambil isi username dan password
              String username = inputUsername.text;
              String password = inputPassword.text;

              // Mengecek apakah input kosong
              if (username.isEmpty || password.isEmpty) {

                // Kalau kosong, tampilkan pesan
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Username dan password harus diisi!"),
                  ),
                );

                // Jangan pindah halaman
                return;
              }

              // Mengecek username dan password
              if (username == "admin" && password == "12345") {

                // Kalau benar, pindah ke Home
                // pushReplacement membuat halaman Login diganti
                // sehingga tombol Back tidak kembali ke Login
                Navigator.pushReplacementNamed(context, "/home");

              } else {

                // Kalau username/password salah
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Username atau password salah!"),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}