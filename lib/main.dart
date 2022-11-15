import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.black,
       title: Center(
         child: Text(
             "HEADLINES",
             style: TextStyle(
               color: Colors.white,
               fontSize: 29,
               fontFamily: 'Roboto_Slab',
               fontWeight: FontWeight.bold,
             ),
         ),
       ),
     ),
      body: Container(
        color: Colors.grey[800],
      ),
    );
  }
}
