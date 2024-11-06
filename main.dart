import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Root widget
      home: Scaffold(
        appBar: AppBar(
          title: const Text('login Page'),
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  const Text(
                    'Flutter',
                    style: TextStyle(fontSize: 80 ,color: Colors.blueAccent , ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
  decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Email',
    hintText: 'silahkan masukkan email anda'
  ),
),
TextField(
  decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Password',
    hintText: 'silahkan masukkan password anda'
  ),
),
const SizedBox(height: 15,),
const Text("forgot password?",
style: TextStyle(color: Colors.blueAccent),
),
const SizedBox(height: 15,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
                    onPressed: () {
                      print('Click!');
                    },
                    child: const Text('Login'),
                  ),

                  Container(
                    margin: EdgeInsets.all(100),
                    child: const Text('new user? get account'),
                  ),

                ],
              );
            },
          ),
        ),
      ),
    );
  }
}