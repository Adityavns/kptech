import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:kptech/Bloc.dart';
import 'package:kptech/widget_base.dart';

class CommunicationDetails extends StatefulWidget {
  @override
  _CommunicationDetailsState createState() => _CommunicationDetailsState();
}

class _CommunicationDetailsState extends State<CommunicationDetails> {
  Bloc _bloc = Bloc.getInstance();

  String _picked = "Yes";

  @override
  Widget build(BuildContext context) {
    return new Column(
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
      ],
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
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "state"))),
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
                    border: OutlineInputBorder(), hintText: "District"))),
        IconButton(icon: Icon(Icons.keyboard_arrow_down), onPressed: () {})
      ],
    );
  }

  Widget getCommunicationAddressPINCode() {
    return TextFormField(
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
                    border: OutlineInputBorder(), hintText: "City"))),
        IconButton(icon: Icon(Icons.keyboard_arrow_down), onPressed: () {})
      ],
    );
  }

  Widget getCommunicationAddressTehsil() {
    return TextFormField(
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
            _picked = selected;
          }),
          picked: _picked,
        ),
      ],
    );
  }

  Widget getPreviousExperienceSector() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Previous Experience List",
      ),
    );
  }

  Widget getNoOfMonthsOfPreviousExperiences() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Enter Experience between 1-500 months",
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
        Expanded(
            child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Employment status"))),
        IconButton(icon: Icon(Icons.keyboard_arrow_down), onPressed: () {})
      ],
    );
  }

  Widget getEmploymentDetails() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Employment Details",
      ),
    );
  }

  Widget getHeardAboutUs() {
    return Row(
      children: <Widget>[
        Expanded(
            child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Employment status"))),
        IconButton(icon: Icon(Icons.keyboard_arrow_down), onPressed: () {})
      ],
    );
  }

  Widget getCandidateID() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Enter Experience between 1-500 months",
      ),
    );
  }
}
