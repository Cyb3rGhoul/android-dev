import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Conatiner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hello'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(83, 104, 120, 1),
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade50,
        child: Center(
          //to make the child widget in the center
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                // borderRadius: BorderRadius.circular(21) // to make the border
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(21),
                //   bottomRight: Radius.circular(21),
                // ),
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 20, color: Colors.black, spreadRadius: 1),
                ]
                // shape: BoxShape.circle //use only when there is no border radius
                ),
          ),
        ),
      ),
    );
  }
}
