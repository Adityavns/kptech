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
    return new Scaffold(body: getBody());
  }

  Widget getBody() {
    return Column(
      children: <Widget>[
        widget1(),
        widget2(),
        widget3(),
      ],
    );
  }

  Widget widget1() {
    return WidgetBase(child: Text("Pranay"));
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
