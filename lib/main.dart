import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 152, 24),
        title: const Text('Flutter'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.add), label: 'Add'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Contacts'),
      ]),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/loginpage2.jpg'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 300.0),
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(),
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.deepPurple,
                      width: 5,
                    ),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(top: BorderSide.none),
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(22, 33),
                      ),
                    ),
                    child: const Text(
                      'login',
                      style: TextStyle(color: Color.fromARGB(255, 36, 35, 32)),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
