import 'package:flutter/material.dart';
import 'package:workout/Tabs/plan.dart' as plan;
import 'package:workout/Tabs/challenges.dart' as challenges;
import 'package:workout/Tabs/report.dart' as report;
import 'package:workout/Tabs/profile.dart' as profile;

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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: TabBarView(
          children: [
            plan.Plan(),
            challenges.Challenges(),
            report.Report(),
            profile.Profile(),
          ],
        ),
        bottomNavigationBar: new TabBar(
          tabs: [
            Tab(
              icon: new Icon(Icons.assignment),
            ),
            Tab(
              child: Text('30'),
            ),
            Tab(
              icon: new Icon(Icons.assessment),
            ),
            Tab(
              icon: new Icon(Icons.perm_identity),
            )
          ],
          labelColor: Colors.greenAccent,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.black,
        ),
      ),
    );
  }
}
