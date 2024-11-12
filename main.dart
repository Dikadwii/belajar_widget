import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Root widget
      home: Scaffold(
        appBar: AppBar(
          title: Container(child: Text('container widget', style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255)
          ),),
          color: const Color.fromARGB(255, 99, 100, 102),
          alignment: Alignment.center,
          width: 2200,
          height: 100,)
          
          
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  Center(
        child: Container(
          height: 220,
          width: double.infinity,
          margin: const EdgeInsets.all(16.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.deepPurple),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 156, 142, 142).withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Title: Flutter tutorial',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 133, 121, 121)),
              ),
              const SizedBox(height: 8),
              const Divider(color: Colors.black),
              const Text(
                'Description: This is a card-like layout using a Container widget. It has padding, margin, and a box shadow.',
                style: TextStyle(
                  color: Color.fromARGB(255, 129, 121, 121),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('visit to read more')))
            ],
          ),
        ),
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