import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class Widget1 extends StatefulWidget {
  @override
  _Widget1State createState() => _Widget1State();
}

TextEditingController controller = new TextEditingController();

class _Widget1State extends State<Widget1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getSalutation(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getName(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getGender(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getDateOfBirth(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getEmailId(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getMaritalStatus(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getFathersName(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getMothersName(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getGuardiansName(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getReligion(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getCategory(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getDisability(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: getTypeOfDisability(),
        )
      ],
    );
  }

  Widget getSalutation() {
    return Row(
      children: <Widget>[
        Text("Salutation* : ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.blueAccent)),
        RadioButtonGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            labels: <String>["Mr", "Ms", "Mrs", "mx"],
            onSelected: (String selected) => print(selected)),
      ],
    );
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

  Widget getName() {
    return getTextField(controller, 50, "Enter Full Name*");
  }

  Widget getGender() {
    return Row(
      children: <Widget>[
        Text("Gender* : ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.blueAccent)),
        RadioButtonGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            labels: <String>[
              "Male ",
              "Female ",
              "   Transgender",
            ],
            onSelected: (String selected) => print(selected)),
      ],
    );
  }

  Widget getDateOfBirth() {
    final format = DateFormat("yyyy-MM-dd");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Date of Birth :",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: Colors.blueAccent)),
        DateTimeField(
          format: format,
          onShowPicker: (context, currentValue) {
            return showDatePicker(
                context: context,
                firstDate: DateTime(1900),
                initialDate: currentValue ?? DateTime.now(),
                lastDate: DateTime(2100));
          },
        ),
      ],
    );
  }

  Widget getEmailId() {
    return getTextField(controller, 20, "Enter Email*");
  }

  Widget getMaritalStatus() {
    return Column(
      children: <Widget>[
        new Text("Marital Status : ",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.blueAccent)),
        RadioButtonGroup(
            orientation: GroupedButtonsOrientation.VERTICAL,
            labels: <String>[
              "Single",
              "Married",
              "Widowed",
              "Divorced",
              "separated",
              "Not to be Disclosed"
            ],
            onSelected: (String selected) => print(selected)),
      ],
    );
  }

  Widget getFathersName() {
    return getTextField(controller, 20, "Enter Father's Name*");
  }

  Widget getMothersName() {
    return getTextField(controller, 20, "Enter Mothers's Name*");
  }

  Widget getGuardiansName() {
    return getTextField(controller, 20, "Enter Guardian's Name*");
  }

  Widget getReligion() {
    return Column(
      children: <Widget>[
        new Text("Religion* : ",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.blueAccent)),
        RadioButtonGroup(
            orientation: GroupedButtonsOrientation.VERTICAL,
            labels: <String>[
              "Hindu",
              "Muslim",
              "Christian",
              "Sikh",
              "Buddhist",
              "Jews",
              "others",
              "Not to be Disclosed"
            ],
            onSelected: (String selected) => print(selected)),
      ],
    );
  }

  Widget getCategory() {
    return Column(
      children: <Widget>[
        new Text("Category* : ",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.blueAccent)),
        RadioButtonGroup(
            orientation: GroupedButtonsOrientation.VERTICAL,
            labels: <String>[
              "General",
              "OBC",
              "SC",
              "ST",
              "Not to be disclosed"
            ],
            onSelected: (String selected) => print(selected)),
      ],
    );
    ;
  }

  Widget getDisability() {
    return Row(
      children: <Widget>[
        Text("Disability* : ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.blueAccent)),
        RadioButtonGroup(
            orientation: GroupedButtonsOrientation.HORIZONTAL,
            labels: <String>[
              "Yes",
              "No",
            ],
            onSelected: (String selected) => print(selected)),
      ],
    );
  }

  Widget getTypeOfDisability() {
    return Column(
      children: <Widget>[
        new Text("Types of Disability* : ",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.blueAccent)),
        CheckboxGroup(
            orientation: GroupedButtonsOrientation.VERTICAL,
            labels: <String>[
              "Locomotor Disability",
              "Leprosy Cured Person",
              "Dwarfism",
              "Acid Attack Victims",
              "Blindness/Visual Impairment",
              "Low-vision (Visual Impairment)",
              "Deaf",
              "Hard of Hearing",
              "Speech and Language Disability",
              "Intellectual/Mental Retardation",
              "Autism Spectrum Disorder",
              "Specific Learning Disabilities",
              "Mental Behavior-Mental Illness",
              "Haemophilia",
              "Thalassemia",
              "Sickle Cell Disease",
              "Deaf Blindness",
              "Cerebral Palsy",
              "Multiple Sclerosis",
              "Muscular Dystrophy"
            ],
            onSelected: (List<String> checked) => print(checked.toString())),
      ],
    );
  }
}
