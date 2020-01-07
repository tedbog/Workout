import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            FlatButton(
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                title: Text('Бүртгэл'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              onPressed: () {},
            ),
            Divider(),
            FlatButton(
              child: ListTile(
                leading: Icon(
                  Icons.alarm,
                  color: Colors.orange,
                ),
                title: Text('Сануулга үүсгэх'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              onPressed: () {},
            ),
            Divider(),
            FlatButton(
              child: ListTile(
                leading: Icon(
                  Icons.history,
                  color: Colors.green,
                ),
                title: Text('Түүх'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              onPressed: () {},
            ),
            Divider(),
            FlatButton(
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                title: Text('Тохиргоо'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              onPressed: () {},
            ),
            Divider(),
            FlatButton(
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.purple,
                ),
                title: Text('Бүртгэл'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              onPressed: () {},
            ),
            Divider(),
          ],
        ));
  }
}
