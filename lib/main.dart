import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
  MyHomePage();
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
          child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.timer), text: "Plan",),
              Tab(icon: Icon(Icons.track_changes), text: "Challenges"),
              Tab(icon: Icon(Icons.table_chart), text: "Reports"),
              Tab(icon: Icon(Icons.supervised_user_circle), text: "Profile"),
            ],
          ),
        ),
        body: TabBarView(
              children: [
                Center( child: Text("Page 1")),
                Center( child: Text("Page 2")),
                Center( child: Text("Page 2")),
                Center( child: Text("Page 2")),
              ],
            ),
      ),
    );
  }
}
