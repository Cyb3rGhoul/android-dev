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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Container'),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        height: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // main axis
          crossAxisAlignment: CrossAxisAlignment.center, // cross axis
          children: <Widget>[
            Text(
              'A',
              style: TextStyle(fontSize: 21),
            ),
            Text(
              'B',
              style: TextStyle(fontSize: 21),
            ),
            Text(
              'C',
              style: TextStyle(fontSize: 21),
            ),
            Text(
              'D',
              style: TextStyle(fontSize: 21),
            ),
            Text(
              'E',
              style: TextStyle(fontSize: 21),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Button')),
          ],
        ),
      ),
    );
  }
}
