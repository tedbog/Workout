import 'package:flutter/material.dart';

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
                print('pressed');
              },
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width - 10,
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/images/image2.jpg',
                    fit: BoxFit.fitWidth,
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
