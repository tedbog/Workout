import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

class Plan extends StatefulWidget {
  @override
  _PlanState createState() => _PlanState();
}

class _PlanState extends State<Plan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10),
            child: FlatButton(
              onPressed: () {
                print('pressed');
              },
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width - 10,
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/images/image1.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            Levels('БҮТЭН БИЕИЙН ДАСГАЛ')));
              },
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width - 10,
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(5),
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/image2.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                      Center(
                          child: Text(
                        'БҮТЭН БИЕИЙН ДАСГАЛ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Levels extends StatefulWidget {
  String workout;
  Levels(this.workout);
  @override
  _LevelsState createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      child: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      widget.workout,
                      style: TextStyle(fontSize: 20),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.more_vert))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: FlatButton(
                      color: Colors.orange,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: ListTile(
                            leading: Icon(
                              Icons.bookmark,
                              size: 60,
                            ),
                            title: Text('АНХАН',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            trailing: Icon(Icons.arrow_forward_ios),
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Workout('БҮТЭН БИЕИЙН ДАСГАЛ')));
                      }),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: FlatButton(
                    color: Colors.orange,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Icon(
                            Icons.bookmark,
                            size: 60,
                          ),
                          title: Text('ЭНГИЙН',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30)),
                          trailing: Icon(Icons.arrow_forward_ios),
                        )),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Workout extends StatefulWidget {
  final String workout;
  Workout(this.workout);
  @override
  _WorkoutState createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  child: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  widget.workout,
                  style: TextStyle(fontSize: 20),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.more_vert))
              ],
            ),
          ),
          Container(
            child: Image.asset('assets/images/jumpingJacks/test.gif'),
          ),
        ]),
      ),
    );
  }
}
