import 'package:flutter/material.dart';
import 'package:kptech/repository/DataSource.dart';
import 'package:kptech/widget_base.dart';

import 'model/Entry.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: new AppBar(), body: getBody());
  }

  Widget getBody() {
    return ListView(
      children: <Widget>[
        new FlatButton(
            onPressed: () {
              DataSource.getDataSource().sendDataToServer(new Entry());
            },
            child: new Text("Press me to send dummy data")),
        widget1(),
        widget2(),
//        widget3(),
      ],
    );
  }

  Widget widget1() {
    return WidgetBase(new Text("Pranay"));
  }

  Widget widget2() {
    return Column(
      children: <Widget>[],
    );
  }

  Widget widget3() {
    return Text("Jashu");
  }

  Widget getTextField(
      TextEditingController controller, int maxLength, String hintText) {
    return TextFormField(
      controller: controller,
      maxLength: maxLength,
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
