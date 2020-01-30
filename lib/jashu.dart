import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:kptech/Bloc.dart';
import 'package:kptech/widget_base.dart';

class Widget3 extends StatefulWidget {
  @override
  _Widget3State createState() => _Widget3State();
}

class _Widget3State extends State<Widget3> {
  Bloc _bloc = Bloc.getInstance();
  String _picked = "Yes";

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        WidgetBase(getCommunicationSameAsPermanentAddress()),
        WidgetBase(getCommunicationAddressState()),
        WidgetBase(getCommunicationAddressDistrict()),
        WidgetBase(getCommunicationAddressPINCode()),
        WidgetBase(getCommunicationAddressCity()),
        WidgetBase(getCommunicationAddressTehsil()),
        WidgetBase(getCommunicationAddressPermanentConstituency()),
        WidgetBase(getTrainingStatus()),
        WidgetBase(getPreviousExperienceSector()),
        WidgetBase(getNoofmonthsofpreviousexperience()),
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
    return Text("");
  }

  Widget getCommunicationAddressDistrict() {
    return Text("");
  }

  Widget getCommunicationAddressPINCode() {
    return Text("");
  }

  Widget getCommunicationAddressCity() {
    return Text("");
  }

  Widget getCommunicationAddressTehsil() {
    return Text("");
  }

  Widget getCommunicationAddressPermanentConstituency() {
    return Text("");
  }

  Widget getTrainingStatus() {
    return Text("");
  }

  Widget getPreviousExperienceSector() {
    return Text("");
  }

  Widget getNoofmonthsofpreviousexperience() {
    return Text("");
  }

  Widget getEmployed() {
    return Text("");
  }

  Widget getEmploymentStatus() {
    return Text("");
  }

  Widget getEmploymentDetails() {
    return Text("");
  }

  Widget getHeardAboutUs() {
    return Text("");
  }

  Widget getCandidateID() {
    return Text("");
  }
}
