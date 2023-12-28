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
        backgroundColor: const Color.fromRGBO(83, 104, 120, 1),
        title: Center(
            child: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${index + 1}'), //it is used to show the leading part of the list
            title: Text(arrNames[index]), // it is used to show the title
            subtitle: Text('Number'), // it is used to show the subtitle
            trailing: Icon(Icons.add), // it is used to show the trailing part i.e. the last part of the list
          );
        },
        itemCount: arrNames.length, // this means how many items to show
        separatorBuilder: (context, index) {
          //we use this only in listview.separated
          return Divider(
            height: 20,
            thickness: 1,
          );
        },
      ),
    );
  }
}
