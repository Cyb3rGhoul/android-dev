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
      home: const MyHomePage(title: 'Login Page'),
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
  var emailText = TextEditingController();
  var passwordText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Center(
            child: Text(
          widget.title,
          style: TextStyle(
              fontFamily: 'FontMain',
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.w500),
        )),
      ),
      body: Center(
          child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: emailText,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.blue, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide:
                              BorderSide(color: Colors.blueGrey, width: 2)),
                      labelText: 'Enter your username',
                      suffixIcon: IconButton(
                          icon: Icon(Icons.person),
                          onPressed: () {
                            print('Icon pressed');
                          }),
                    ),
                  ),
                  Container(
                    height: 10,
                  ),
                  TextField(
                    controller: passwordText,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.blue, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide:
                              BorderSide(color: Colors.blueGrey, width: 2)),
                      labelText: 'Enter your password',
                      suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          onPressed: () {
                            print('Icon pressed');
                          }),
                    ),
                  ),
                  Container(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        String ussemail = emailText.text.toString();
                        String usspassword = passwordText.text.toString();
                        print('Username: $ussemail');
                        print('Password: $usspassword');
                      },
                      child: Text('Login')),
                ],
              ))),
    );
  }
}
