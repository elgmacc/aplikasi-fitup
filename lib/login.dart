import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController inputUsername = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),

      backgroundColor: Color.fromARGB(255, 237, 237, 237),

      body: Column(
        children: [

          // USERNAME
          Center(
            child: Container(
              width: 300,

              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 255, 187, 210),
                  hintText: 'Masukan username kamu',
                  filled: true,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(49),
                    ),
                  ),
                ),

                controller: inputUsername,

                onFieldSubmitted: (values) {
                  inputUsername.text = values;
                },
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(10),
          ),

          // PASSWORD
          Center(
            child: Container(
              width: 300,

              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 255, 187, 210),
                  hintText: 'Masukan password kamu',
                  filled: true,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(49),
                    ),
                  ),
                ),

                controller: inputPassword,

                obscureText: true,

                onFieldSubmitted: (values) {
                  inputPassword.text = values;
                },
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
          ),

          // TOMBOL LOGIN
          ElevatedButton(
            child: Text("Login"),

            onPressed: () {
              print("Username: ${inputUsername.text}");
              print("Password: ${inputPassword.text}");
            },
          ),
        ],
      ),
    );
  }
}