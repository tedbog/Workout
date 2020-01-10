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
  TabController _tabBarViewController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        
        appBar: AppBar(
           backgroundColor: Colors.orange,
           title: Text('30 ӨДРИЙН ФИТНЕСС'),
        ),
        backgroundColor: Color.fromRGBO(232, 230, 225, 1),
        body: TabBarView(
          controller: _tabBarViewController,
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
              icon: new Icon(Icons.assignment, size: 30,),
            ),
            Tab(
              child: Text('30', style: TextStyle(fontSize: 22),),
            ),
            Tab(
              icon: new Icon(Icons.assessment,size: 30,),
            ),
            Tab(
              icon: new Icon(Icons.perm_identity,size: 30,),
            )
          ],
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.white,
        ),
      ),
    );
  }
}
