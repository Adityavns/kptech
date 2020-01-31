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
    inputsTobeDisplayed
        .add(new TextTypeInput(TextInputType.text, 20, "key", "label"));
    inputsTobeDisplayed
        .add(new RadioTypeInput(['one', 'two', 'three'], 'keyRadio', 'label'));
    inputsTobeDisplayed
        .add(new RadioTypeInput(['one', 'two', 'three'], 'keyRadio1', 'label'));
    inputsTobeDisplayed
        .add(new RadioTypeInput(['one', 'two', 'three'], 'keyRadio2', 'label'));
    inputsTobeDisplayed
        .add(new RadioTypeInput(['one', 'two', 'three'], 'keyRadio3', 'label'));
    inputsTobeDisplayed.add(new BooleanTypeInput("boolean", "boolKey"));
    inputsTobeDisplayed
        .add(new ListTypeInput(["One", "Two", "Three"], "Dkey", "Dlabel"));
    inputsTobeDisplayed.add(new DateTypeInput(
        new DateTime(1990), new DateTime(2030), "dateK", "Date"));
    return Scaffold(
      appBar: new AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: inputsTobeDisplayed.length,
          itemBuilder: (context, i) => builder(i),
        ),
      ),
    );
  }

  Widget builder(int i) {
    if (inputsTobeDisplayed[i] is TextTypeInput) {
      TextTypeInput textB = inputsTobeDisplayed[i];
      return buildTextTypeInputWidget(textB);
    } else if (inputsTobeDisplayed[i] is RadioTypeInput) {
      RadioTypeInput radio = inputsTobeDisplayed[i];
      return buildRadioTypeInputWidget(radio);
    } else if (inputsTobeDisplayed[i] is BooleanTypeInput) {
      BooleanTypeInput boolean = inputsTobeDisplayed[i];
      return buildBooleanTypeInputWidget(boolean);
    } else if (inputsTobeDisplayed[i] is ListTypeInput) {
      ListTypeInput dropDown = inputsTobeDisplayed[i];
      return buildListTypeInputWidget(dropDown);
    } else if (inputsTobeDisplayed[i] is DateTypeInput) {
      DateTypeInput date = inputsTobeDisplayed[i];
      return dateTypeInputWidget(date, context);
    }
    return new Text("test");
  }

  Widget buildTextTypeInputWidget(TextTypeInput textInputType) {
    return Container(
      child: Column(
        children: <Widget>[
          new Text(
            textInputType.label,
            style: TextStyle(
                color: textInputType.error ? Colors.red : Colors.black),
          ),
          new TextField(
            autofocus: false,
            keyboardType: textInputType.textInputType,
            maxLength: textInputType.maxLength,
            decoration: InputDecoration(labelText: textInputType.label),
            onChanged: (s) {
              map[textInputType.key] = s;
              print(map.toString());
            },
          ),
        ],
      ),
    );
  }

  Widget buildRadioTypeInputWidget(RadioTypeInput radio) {
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
  }

  Widget buildBooleanTypeInputWidget(BooleanTypeInput boolean) {
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
  }

  Widget buildListTypeInputWidget(ListTypeInput dropDown) {
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
  }

  Widget dateTypeInputWidget(DateTypeInput date, BuildContext context) {
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
}

class Input {
  String key;
  dynamic value;
  String label;
  bool error = true;

  Input(this.key, this.label);
}

class TextTypeInput extends Input {
  TextInputType textInputType;
  int maxLength;

  TextTypeInput(this.textInputType, this.maxLength, String key, String label)
      : super(key, label);
}

class RadioTypeInput extends Input {
  List<String> listOfPossibleValues;

  RadioTypeInput(this.listOfPossibleValues, String key, String label)
      : super(key, label);
}

class DateTypeInput extends Input {
  DateTime startingDate, finalDate;

  DateTypeInput(this.startingDate, this.finalDate, String key, String label)
      : super(key, label);
}

class ListTypeInput extends Input {
  List<dynamic> listOfValues;

  ListTypeInput(this.listOfValues, String key, String label)
      : super(key, label);
}

class BooleanTypeInput extends Input {
  BooleanTypeInput(String key, String label) : super(key, label);
}
