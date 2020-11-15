import 'package:flutter/material.dart';
import 'package:flutter_easy_ui/flutter_easy_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("ta mere en string de guerre".capitalize()),),
        body: [
          Text("hello".capitalize()).onTap(
            () => context.showSnackBar(
              SnackBar(
                duration: 3.seconds,
                content: Text(
                  "Here!",
                ),
              ),
            ),
          ),
        ].column());
  }
}
