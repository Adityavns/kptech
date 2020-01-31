import 'package:flutter/material.dart';
import 'package:kptech/communication_details.dart';

class OtherDetails extends StatefulWidget {
  @override
  _OtherDetailsState createState() => _OtherDetailsState();
}

class _OtherDetailsState extends State<OtherDetails> {
  final domicileState = TextEditingController();
  final domicileDistrict = TextEditingController();
  final adharNo = TextEditingController();
  final countryCode = TextEditingController();
  final mobileNo = TextEditingController();
  final educationLevel = TextEditingController();
  final permanentAddress = TextEditingController();
  final permanentAddressState = TextEditingController();
  final permanentAddressDistrict = TextEditingController();
  final permanentAddressPinCode = TextEditingController();
  final permanentAddressCity = TextEditingController();
  final permanentAddressTehsil = TextEditingController();
  final permanentAddressConstituency = TextEditingController();
  bool isAdhar = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: new AppBar(), body: getBody());
  }

  Widget getBody() {
    return ListView(
      children: <Widget>[
        widget2(),
      ],
    );
  }

  Widget widget2() {
    return Column(children: <Widget>[
      getTextField(domicileState, "Domicile State"),
      getTextField(domicileDistrict, "Domicile District"),
      getTextField(adharNo, "Adhar No"),
      getTextField(countryCode, "Country Code"),
      getTextField(mobileNo, "Mobile Number"),
      getTextField(educationLevel, "Educational Qualification"),
      getTextField(permanentAddress, "PermenentAddress"),
      getTextField(permanentAddressState, "Permanent Address State"),
      getTextField(permanentAddressDistrict, "permanent Address District"),
      getTextField(permanentAddressPinCode, "Permanent Address Code"),
      getTextField(permanentAddressCity, "Permanent Address City"),
      getTextField(permanentAddressTehsil, "Permanent Address Tehsil"),
      getTextField(
          permanentAddressConstituency, "permanent Address Constituency"),
      getButton(),
    ]);
  }

  Widget getTextField(TextEditingController controller, String hintText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }

  Widget getButton() {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => new CommunicationDetails()));
      },
    );
  }
}
