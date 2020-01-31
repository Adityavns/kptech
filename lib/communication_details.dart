import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:kptech/Bloc.dart';
import 'package:kptech/widget_base.dart';

class CommunicationDetails extends StatefulWidget {
  Map map;

  CommunicationDetails({this.map}) {
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
  TextEditingController communicationAddressController =
  new TextEditingController();
  TextEditingController candidateIDController = new TextEditingController();

  String _picked = "No";
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
              WidgetBase(getCommunicationAddressTextField()),
              WidgetBase(getCommunicationAddressState()),
              WidgetBase(getCommunicationAddressDistrict()),
              WidgetBase(getCommunicationAddressPINCode()),
              WidgetBase(getCommunicationAddressCity()),
              WidgetBase(getCommunicationAddressTehsil()),
              WidgetBase(getCommunicationAddressPermanentConstituency()),
              WidgetBase(getTrainingStatus()),
              WidgetBase(getPreviousExperienceSector()),
              WidgetBase(getNoOfMonthsOfPreviousExperiences()),
              WidgetBase(getEmploymentStatus()),
              WidgetBase(getEmploymentDetails()),
              WidgetBase(getHeardAboutUs()),
              // WidgetBase(getCandidateID()),
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
            if (_picked == "Yes")
              getDetailsFromOtherScreen(widget.map);
            else
              clearTextFields();
          }),
          picked: _picked,
        ),
      ],
    );
  }

  Widget getCommunicationAddressTextField() {
    return TextFormField(
      controller: communicationAddressController,
      validator: (s) {
        return s == null || s.length == 0 ? "Enter Valid Details" : null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "CommunicationAddress",
      ),
    );
  }

  Widget getCommunicationAddressState() {
    return TextFormField(
        controller: stateController,
        validator: (s) {
          return s == null || s.length == 0 ? "Enter Valid Details" : null;
        },
        decoration:
        InputDecoration(border: OutlineInputBorder(), labelText: "state"));
  }

  Widget getCommunicationAddressDistrict() {
    return TextFormField(
        controller: districtController,
        validator: (s) {
          return s == null || s.length == 0 ? "Enter Valid Details" : null;
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(), labelText: "District"));
  }

  Widget getCommunicationAddressPINCode() {
    return TextFormField(
      controller: pinCodeController,
      validator: (s) =>
      s.isEmpty && s.length < 6 ? "Enter Valid Details" : null,
      keyboardType: TextInputType.numberWithOptions(),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "pincode",
      ),
    );
  }

  Widget getCommunicationAddressCity() {
    return TextFormField(
        controller: cityController,
        validator: (s) {
          return s == null || s.length == 0 ? "Enter Valid Details" : null;
        },
        decoration:
        InputDecoration(border: OutlineInputBorder(), labelText: "City"));
  }

  Widget getCommunicationAddressTehsil() {
    return TextFormField(
      controller: tehsilController,
      validator: (s) => s.isEmpty ? "Enter Valid Details" : null,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Tehsil",
      ),
    );
  }

  Widget getCommunicationAddressPermanentConstituency() {
    return TextFormField(
      controller: constituencyController,
      validator: (s) {
        return s == null || s.length == 0 ? "Enter Valid Details" : null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Communication Address Constituency",
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
      validator: (s) {
        return _trainingStatus == "Fresher"
            ? null
            : s.isEmpty ? "Enter Valid Details" : null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Previous Experience List",
      ),
    );
  }

  Widget getNoOfMonthsOfPreviousExperiences() {
    return TextFormField(
      enabled: _trainingStatus == "Fresher" ? false : true,
      validator: (s) {
        return _trainingStatus == "Fresher"
            ? null
            : s.isEmpty ? "Enter Valid Details" : null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Enter Experience ",
      ),
    );
  }

  Widget getEmploymentStatus() {
    return Row(
      children: <Widget>[
        dropDownForEmploymentStatus(),
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
            print(newValue);
            heardAboutUsValue = newValue;
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
            _employmentStatus = newValue;
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
            _employmentStatus = newValue;
            employmentStatusController = newValue;
          });
        },
      ),
    );
  }

  void getDetailsFromOtherScreen(Map map) {
    print(map);
    setState(() {
      communicationAddressController.text = map['permanentAddress'];
      stateController.text = map['permanentAddressState'];
      districtController.text = map["permanentAddressDistrict"];
      pinCodeController.text = map["permanentAddressDistrict"];
      cityController.text = map["permanentAddressCity"];
      tehsilController.text = map["permanentAddressTehsil"];
      constituencyController.text = map["permanentAddressConstituency"];
    });
  }

  onSubmitPressed() {
    final FormState form = _formKey3.currentState;
    if (form.validate()) {
      Map map = getMapObjects(widget.map);
      _bloc.sendMapToServer(map);
    }
  }

  Map<String, dynamic> getMapObjects(Map map) {
    map["communicationSameAsPermanentAddress"] = _picked;
    map['permanentAddress'] = communicationAddressController.text;
    map["communicationAddressState"] = stateController.text;
    map["communicationAddressDistrict"] = districtController.text;
    map["communicationAddressPinCode"] = pinCodeController.text;
    map["communicationAddressCity"] = cityController.text;
    map["communicationAddressTehsil"] = tehsilController.text;
    map["communicationAddressPermanentConstituency"] =
        constituencyController.text;
    map["communicationAddressSameAsPermanantAddress"] =
        communicationAddressController.text;
    map["trainingStatus"] = _trainingStatus;
    map["previousExperienceSector"] = experienceListController.text;
    map["noOfMonthsOfExperience"] = experienceController.text;
    map["employmentStatus"] = _employmentStatus;
    map["employmentDetails"] = employmentDetailsController.text;
    map["heardAboutUs"] = heardAboutUsValue;
    return map;
  }

  void clearTextFields() {
    communicationAddressController.clear();
    stateController.clear();
    districtController.clear();
    pinCodeController.clear();
    cityController.clear();
    tehsilController.clear();
    constituencyController.clear();
  }
}

enum boolType { yes, no }
