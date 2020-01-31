import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:intl/intl.dart';
import 'package:kptech/other_details.dart';

class PersonalDetails extends StatefulWidget {
  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController fNameController = new TextEditingController();
  TextEditingController mNameController = new TextEditingController();
  TextEditingController gNameController = new TextEditingController();
  TextEditingController dobController = new TextEditingController();
  String _salutation = "Mr";
  String _gender = "Male";
  String _martialStatus = "Single";
  String _disability = "No";
  String _religion;
  String _category;
  List<String> _selectedList;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("KP Tech")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text("Personal Details",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 18.0),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: getSalutation(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, right: 8.0, top: 8.0, bottom: 0.0),
                child: getName(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, right: 8.0, top: 0.0, bottom: 15.0),
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
                padding: const EdgeInsets.only(
                    left: 8.0, right: 8.0, top: 2.0, bottom: 15.0),
                child: getDisability(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: getTypeOfDisability(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: getNextButton(),
              )
            ],
          ),
        ),
      ),
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
          picked: _salutation,
          onChange: (String label, int index) =>
              print("label: $label index: $index"),
          onSelected: (String selected) {
            setState(() {
              _salutation = selected;
            });
          },
        )
      ],
    );
  }

  Widget getTextField(
      TextEditingController controller, int maxLength, String hintText) {
    return TextFormField(
      controller: controller,
      maxLength: maxLength,
      decoration: InputDecoration(
        labelText: hintText,
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }

  Widget getName() {
    return getTextField(nameController, 50, "Enter Full Name*");
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
            "Male",
            "Female",
            "Transgender",
          ],
          picked: _gender,
          onChange: (String label, int index) =>
              print("label: $label index: $index"),
          onSelected: (String selected) {
            setState(() {
              _gender = selected;
            });
          },
        )
      ],
    );
  }

  Widget getDateOfBirth() {
    final format = DateFormat("yyyy-MM-dd");
    return DateTimeField(
      controller: dobController,
        validator: (value) {
          if (value==null) {
            return 'Please Select D.O.B';
          }
          return null;
        },
      decoration: InputDecoration(
          hintText: "D.O.B Tap to select", border: OutlineInputBorder()),
      format: format,
      onShowPicker: (context, currentValue) {
        return showDatePicker(
            context: context,
            firstDate: DateTime(1900),
            initialDate: currentValue ?? DateTime.now(),
            lastDate: DateTime(2100));
      },
    );
  }

  Widget getEmailId() {
    return getTextField(emailController, 20, "Enter Email*");
  }

  Widget getMaritalStatus() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
            picked: _martialStatus,
            onChange: (String label, int index) =>
                print("label: $label index: $index"),
            onSelected: (String selected) {
              _martialStatus = selected;
            }),
      ],
    );
  }

  Widget getFathersName() {
    return getTextField(fNameController, 20, "Enter Father's Name*");
  }

  Widget getMothersName() {
    return getTextField(mNameController, 20, "Enter Mothers's Name*");
  }

  Widget getGuardiansName() {
    return getTextField(gNameController, 20, "Enter Guardian's Name*");
  }

  Widget getReligion() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
            picked: _religion,
            onSelected: (String selected) {
              setState(() {
                _religion = selected;
              });
            }),
      ],
    );
  }

  Widget getCategory() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
            picked: _category,
            onSelected: (String selected) {
              setState(() {
                _category = selected;
              });
            }),
      ],
    );
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
            picked: _disability,
            onChange: (String label, int index) =>
                print("label: $label index: $index"),
            onSelected: (String selected) {
              setState(() {
                _disability = selected;
              });
            }),
      ],
    );
  }

  Widget getTypeOfDisability() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: new Text("Types of Disability* : ",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.blueAccent)),
        ),
        CheckboxGroup(
            orientation: GroupedButtonsOrientation.VERTICAL,
            disabled: _disability == "Yes"
                ? []
                : [
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
            onSelected: (List<String> checked) {
              setState(() {
                _selectedList = checked;
              });
            }),
      ],
    );
  }

  Widget getNextButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new FlatButton(
              color: Colors.blueAccent,
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  Map<String,dynamic> map = new Map();
                  map=getMapObjects(map);
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new OtherDetails(map)));
                }else{
                    showAlertDialog();
                }
              },
              child: new Text(
                "Next",
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    );
  }

  showAlertDialog(){
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("You must fill all the fields"),
          content: Text("Click on 'OK' to continue"),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Map<String,dynamic > getMapObjects(Map map) {
    map["salutation"]=_salutation;
    map["name"]=nameController.text;
    map["gender"]=_gender;
    map["dob"]=dobController.text;
    map["email"]=emailController.text;
    map["maritalStatus"]=_martialStatus;
    map["fathersName"]=fNameController.text;
    map["mothersName"]=mNameController.text;
    map["guardiansName"]=gNameController.text;
    map["religion"]=_religion;
    map["category"]=_category;
    map["disability"]=_disability;
    map["disabilityTypes"]=_selectedList;
    return map;
  }
}
