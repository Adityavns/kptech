import 'package:flutter/material.dart';
import 'package:kptech/PersonalDetails.dart';

import 'Bloc.dart';

class Submit extends StatefulWidget {
  @override
  Map map;
  Submit(map){
    this.map=map;
  }
  _SubmitState createState() => _SubmitState();
}

class _SubmitState extends State<Submit> {

  @override

  Bloc _bloc = Bloc.getInstance();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("KP Tech")),
      body: getBody(),
    );
  }

  Widget getBody() {
    return  getDoneWidget();
  }

  Widget getDoneWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              "Saved Data Sucessfully.",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new RaisedButton(onPressed: goToHomeScreen, child: Text("Ok")),
          )
        ],
      ),
    );
  }

  Widget getCircularProgressIndicator() {
    return Center(
      child:CircularProgressIndicator(),
    );
  }

  goToHomeScreen() {
    /*Navigator.of(context).popUntil((route) => route.isFirst);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>new PersonalDetails()));*/
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
        new PersonalDetails()), (Route<dynamic> route) => false);
  }
}
