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
      body: Center(
        child: InkWell(
          onTap: () {
            print('tapped');
          },
          onDoubleTap: () {
            print('double tapped');
          },
          onLongPress: () {
            print('long pressed');
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.grey,
            child: Center(
                child: InkWell(
              onTap: () {
                print('Text widjet tapped');
              },
              child: Text("Click here",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700)),
            )),
          ),
        ),
      ),
    );
  }
}
