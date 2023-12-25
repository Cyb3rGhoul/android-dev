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
    var arrNames = ['Harsh', 'Harry', 'Shine', 'Shukla', 'HS'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Text(arrNames[index],
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500)); //dynamic list using
        },
        itemCount: arrNames.length, // this means how many items to show
        separatorBuilder: (context, index) {
          //we use this only in listview.separated
          return Divider(
            height: 100,
            thickness: 1,
          );
        },
      ),

      // ListView.builder( //this is automaticllay delete the items which are not in the screen
      //   itemBuilder: (context, index) {
      //     return Text(arrNames[index],
      //         style: TextStyle(
      //             fontSize: 21,
      //             fontWeight: FontWeight.w500)); //dynamic list using
      //   },
      //   itemCount: arrNames.length, // this means how many items to show
      //   itemExtent: 150, //automatic scrolling
      //   scrollDirection: Axis.horizontal,
      // )

      //Statically building the list
      // scrollDirection: Axis.horizontal,
      // children: [
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       'One',
      //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //     ),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       'Two',
      //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //     ),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       'Three',
      //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //     ),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       'Four',
      //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //     ),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       'Five',
      //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //     ),
      //   ),
      // ],
    );
  }
}
