import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  Map<String, dynamic> map = new Map();

  List<Input> inputsTobeDisplayed = new List();

  @override
  Widget build(BuildContext context) {
    inputsTobeDisplayed.clear();
    inputsTobeDisplayed.add(new TextB(TextInputType.text, 20, "key", "label"));
    inputsTobeDisplayed
        .add(new RadioB(['one', 'two', 'three'], 'keyRadio', 'label'));
    inputsTobeDisplayed
        .add(new RadioB(['one', 'two', 'three'], 'keyRadio1', 'label'));
    inputsTobeDisplayed
        .add(new RadioB(['one', 'two', 'three'], 'keyRadio2', 'label'));
    inputsTobeDisplayed
        .add(new RadioB(['one', 'two', 'three'], 'keyRadio3', 'label'));
    inputsTobeDisplayed.add(new Boolean("boolean", "boolKey"));
    inputsTobeDisplayed
        .add(new DropDown(["One", "Two", "Three"], "Dkey", "Dlabel"));
    inputsTobeDisplayed
        .add(new Date(new DateTime(1990), new DateTime(2030), "dateK", "Date"));
    return Scaffold(
      appBar: new AppBar(),
      body: ListView.builder(
        itemCount: inputsTobeDisplayed.length,
        itemBuilder: (context, i) => builder(i),
      ),
    );
  }

  Widget builder(int i) {
    if (inputsTobeDisplayed[i] is TextB) {
      TextB textB = inputsTobeDisplayed[i];
      return new TextField(
        autofocus: false,
        keyboardType: textB.textInputType,
        maxLength: textB.maxLength,
        decoration: InputDecoration(labelText: textB.label),
        onChanged: (s) {
          map[textB.key] = s;
          print(map.toString());
        },
      );
    } else if (inputsTobeDisplayed[i] is RadioB) {
      RadioB radio = inputsTobeDisplayed[i];
      List<Widget> radios = new List();
      for (int i = 0; i < radio.listOfPossibleValues.length; i++) {
        radios.add(Row(
          children: <Widget>[
            new Text(radio.listOfPossibleValues[i].toString()),
            new Radio(
              value: radio.listOfPossibleValues[i],
              groupValue: map[radio.key],
              onChanged: (s) {
                setState(() {
                  map[radio.key] = s;
                });
                print(map.toString());
              },
            ),
          ],
        ));
      }
      return Column(
        children: <Widget>[
          new Text(radio.label),
          Wrap(
            children: radios,
          ),
        ],
      );
    } else if (inputsTobeDisplayed[i] is Boolean) {
      Boolean boolean = inputsTobeDisplayed[i];
      return Row(
        children: <Widget>[
          new Text(boolean.label),
          new Checkbox(
            value: map[boolean.key] == null ? false : map[boolean.key],
            onChanged: (s) {
              setState(() {
                map[boolean.key] = s;
              });
              print(map.toString());
            },
          ),
        ],
      );
    } else if (inputsTobeDisplayed[i] is DropDown) {
      DropDown dropDown = inputsTobeDisplayed[i];
      return DropdownButton<dynamic>(
          value: map[dropDown.key],
          items: dropDown.listOfValues.map<DropdownMenuItem>((dynamic val) {
            return DropdownMenuItem<dynamic>(
              child: Text(val),
              value: val,
            );
          }).toList(),
          onChanged: (dynamic val) {
            setState(() {
              map[dropDown.key] = val;
            });
            print(map.toString());
          });
    } else if (inputsTobeDisplayed[i] is Date) {
      Date date = inputsTobeDisplayed[i];

      return FlatButton(
        onPressed: () async {
          DateTime selectedDate = await showDatePicker(
            context: context,
            initialDate: date.startingDate,
            firstDate: date.startingDate,
            lastDate: date.finalDate,
            builder: (BuildContext context, Widget child) {
              return Theme(
                data: ThemeData.dark(),
                child: child,
              );
            },
          );
          setState(() {
            map[date.key] = selectedDate.millisecondsSinceEpoch.toString();
          });
        },
        child: new Text(
            map[date.key] == null ? "Select date" : map[date.key].toString()),
      );
    }
    return new Text("test");
  }
}

class Input {
  String key;
  dynamic value;
  String label;

  Input(this.key, this.label);
}

class TextB extends Input {
  TextInputType textInputType;
  int maxLength;

  TextB(this.textInputType, this.maxLength, String key, String label)
      : super(key, label);
}

class RadioB extends Input {
  List<String> listOfPossibleValues;

  RadioB(this.listOfPossibleValues, String key, String label)
      : super(key, label);
}

class Date extends Input {
  DateTime startingDate, finalDate;

  Date(this.startingDate, this.finalDate, String key, String label)
      : super(key, label);
}

class DropDown extends Input {
  List<dynamic> listOfValues;

  DropDown(this.listOfValues, String key, String label) : super(key, label);
}

class Boolean extends Input {
  Boolean(String key, String label) : super(key, label);
}
