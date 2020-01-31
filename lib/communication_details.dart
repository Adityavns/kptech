import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:kptech/Bloc.dart';
import 'package:kptech/widget_base.dart';

class CommunicationDetails extends StatefulWidget {
  Map map;

  CommunicationDetails({map}) {
    print(map);
  }

  @override
  _CommunicationDetailsState createState() => _CommunicationDetailsState();
}

class _CommunicationDetailsState extends State<CommunicationDetails> {
  Bloc _bloc = Bloc.getInstance();
  final GlobalKey<FormState> _formKey3 = GlobalKey<FormState>();
  TextEditingController stateController = new TextEditingController();
  TextEditingController districtController = new TextEditingController();
  TextEditingController pinCodeController = new TextEditingController();
  TextEditingController cityController = new TextEditingController();
  TextEditingController tehsilController = new TextEditingController();
  TextEditingController constituencyController = new TextEditingController();
  TextEditingController experienceListController = new TextEditingController();
  TextEditingController experienceController = new TextEditingController();
  TextEditingController employmentStatusController =
  new TextEditingController();
  TextEditingController employmentDetailsController =
  new TextEditingController();
  TextEditingController heardAboutUsController = new TextEditingController();
  TextEditingController candidateIDController = new TextEditingController();

  String _picked = "Yes";
  String _trainingStatus = "Experience";
  String heardAboutUsValue = 'Select';
  String _employmentStatus = "Select Employment Status";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey3,
        child: SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              Text(
                "Communication Details",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              WidgetBase(getCommunicationSameAsPermanentAddress()),
              WidgetBase(getCommunicationAddressState()),
              WidgetBase(getCommunicationAddressDistrict()),
              WidgetBase(getCommunicationAddressPINCode()),
              WidgetBase(getCommunicationAddressCity()),
              WidgetBase(getCommunicationAddressTehsil()),
              WidgetBase(getCommunicationAddressPermanentConstituency()),
              WidgetBase(getTrainingStatus()),
              WidgetBase(getPreviousExperienceSector()),
              WidgetBase(getNoOfMonthsOfPreviousExperiences()),
              WidgetBase(getEmployed()),
              WidgetBase(getEmploymentStatus()),
              WidgetBase(getEmploymentDetails()),
              WidgetBase(getHeardAboutUs()),
              WidgetBase(getCandidateID()),
              WidgetBase(getSubmitButton()),
            ],
          ),
        ),
      ),
    );
  }

  Widget getCommunicationSameAsPermanentAddress() {
    return Column(
      children: <Widget>[
        Text("Communication Address Is Same as Permanant Address"),
        RadioButtonGroup(
          labels: <String>["Yes", "No"],
          onSelected: (String selected) => setState(() {
            _picked = selected;
            if (selected == "Yes") getDetailsFromOtherScreen();
          }),
          picked: _picked,
        ),
      ],
    );
  }

  Widget getCommunicationAddressState() {
    return Row(
      children: <Widget>[
        Expanded(
            child: TextFormField(
                controller: stateController,
                validator: (s) {
                  return s == null || s.length == 0
                      ? "Enter Valid Details"
                      : null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "state"))),
        IconButton(icon: Icon(Icons.keyboard_arrow_down), onPressed: () {})
      ],
    );
  }

  Widget getCommunicationAddressDistrict() {
    return Row(
      children: <Widget>[
        Expanded(
            child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "District"))),
        IconButton(icon: Icon(Icons.keyboard_arrow_down), onPressed: () {})
      ],
    );
  }

  Widget getCommunicationAddressPINCode() {
    return TextFormField(
      controller: pinCodeController,
      validator: (s) =>
      s.isEmpty && s.length < 6 ? "Enter Valid Details" : null,
      keyboardType: TextInputType.numberWithOptions(),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "pincode",
      ),
    );
  }

  Widget getCommunicationAddressCity() {
    return Row(
      children: <Widget>[
        Expanded(
            child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "City"))),
        IconButton(icon: Icon(Icons.keyboard_arrow_down), onPressed: () {})
      ],
    );
  }

  Widget getCommunicationAddressTehsil() {
    return TextFormField(
      controller: tehsilController,
      validator: (s) => s.isEmpty ? "Enter Valid Details" : null,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Tehsil",
      ),
    );
  }

  Widget getCommunicationAddressPermanentConstituency() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "CommunicationAddressPermanentConstituency",
      ),
    );
  }

  Widget getTrainingStatus() {
    return Column(
      children: <Widget>[
        Text("Training Status"),
        RadioButtonGroup(
          labels: <String>["Fresher", "Experienced"],
          onSelected: (String selected) => setState(() {
            _trainingStatus = selected;
          }),
          picked: _trainingStatus,
        ),
      ],
    );
  }

  Widget getPreviousExperienceSector() {
    return TextFormField(
      enabled: _trainingStatus == "Fresher" ? false : true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Previous Experience List",
      ),
    );
  }

  Widget getNoOfMonthsOfPreviousExperiences() {
    return TextFormField(
      enabled: _trainingStatus == "Fresher" ? false : true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Enter Experience ",
      ),
    );
  }

  Widget getEmployed() {
    return Column(
      children: <Widget>[
        Text("Communication Address Is Same as Permanant Address"),
        RadioButtonGroup(
          labels: <String>["Yes", "No"],
          onSelected: (String selected) => setState(() {
            _picked = selected;
          }),
          picked: _picked,
        ),
      ],
    );
  }

  Widget getEmploymentStatus() {
    return Row(
      children: <Widget>[
        dropDownForEmploymentStatus(),
        /* Expanded(
            child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Employment status"))),
        IconButton(icon: Icon(Icons.keyboard_arrow_down), onPressed: () {})*/
      ],
    );
  }

  Widget getEmploymentDetails() {
    return TextFormField(
      controller: employmentDetailsController,
      validator: (s) {
        return _trainingStatus == "Experience"
            ? s.isEmpty ? "Employment Status is Required" : null
            : null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Employment Details*",
      ),
    );
  }

  Widget getHeardAboutUs() {
    return Row(
      children: <Widget>[
        dropDownForHeardAboutUS(),
        /*Expanded(
            child: TextFormField(
                controller: heardAboutUsController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Heard About us"))),
        onIconButtonPressedForHeardAboutUs()*/
      ],
    );
  }

  Widget getCandidateID() {
    return TextFormField(
      controller: candidateIDController,
      validator: (s) => s.isEmpty ? "Id is required" : null,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Candidate Id",
      ),
    );
  }

  Widget getSubmitButton() {
    return new RaisedButton(
      onPressed: () => onSubmitPressed(),
      child: Text("Submit"),
    );
  }

/*  Widget onIconButtonPressedForHeardAboutUs() {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: heardAboutUsValue,
        icon: Icon(Icons.keyboard_arrow_down),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.blue,
        ),
        onChanged: (String newValue) {
          setState(() {
            //   heardAboutUsValue = newValue;
            heardAboutUsController.text = newValue;
          });
        },
        items: <String>[
          'Internet',
          'Friends/Relatives',
          'Kaushal Mela',
          'Newsletter',
          'Others'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }*/

  Widget dropDownForHeardAboutUS() {
    return Expanded(
      child: DropdownButtonFormField(
        validator: (s) => s == "Select" ? "This Field is Required" : null,
        isExpanded: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        value: heardAboutUsValue,
        items: [
          'Select',
          'Internet',
          'Friends/Relatives',
          'Kaushal Mela',
          'Newsletter',
          'Others'
        ].map<DropdownMenuItem>((String value) {
          return DropdownMenuItem<String>(
            child: Text(value),
            value: value,
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            heardAboutUsController = newValue;
          });
        },
      ),
    );
  }

  Widget dropDownForEmploymentStatus() {
    return Expanded(
      child: DropdownButtonFormField(
        validator: (s) =>
        s == "Select Employment Status"
            ? "Select Your Employment Status "
            : null,
        hint: Text("Enter Employment Status"),
        isExpanded: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        value: _employmentStatus,
        items: [
          'Select Employment Status',
          'Employed through Partner',
          'Employed through Employer',
          'Upskilled',
          'Opted for Higher Studies',
          'Self-Employed'
        ].map<DropdownMenuItem>((String value) {
          return DropdownMenuItem<String>(
            child: Text(value),
            value: value,
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            employmentStatusController = newValue;
          });
        },
      ),
    );
  }

  Widget dropDownForStates() {
    return Expanded(
      child: DropdownButtonFormField(
        validator: (s) =>
        s == "Select Employment Status"
            ? "Select Your Employment Status "
            : null,
        hint: Text("Enter Employment Status"),
        isExpanded: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        value: _employmentStatus,
        items: [
          'ANDAMAN AND NICOBAR ISLANDS',
          'ANDHRA PRADESH',
          'Employed through Employer',
          'ARUNACHAL PRADESH',
          'ASSAM',
          'BIHAR'
        ].map<DropdownMenuItem>((String value) {
          return DropdownMenuItem<String>(
            child: Text(value),
            value: value,
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            employmentStatusController = newValue;
          });
        },
      ),
    );
  }

  void getDetailsFromOtherScreen() {
    //todo should import details from other screen
  }

  onSubmitPressed() {
    final FormState form = _formKey3.currentState;
    if (form.validate()) {
      Map map = widget.map;
      //todo send details to bloc in map
    }
  }
}
