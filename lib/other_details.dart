import 'package:flutter/material.dart';
import 'package:kptech/communication_details.dart';

class OtherDetails extends StatefulWidget {
  Map map;
  @override
  OtherDetails(this.map) {
    print(map);
  }
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String dropDownValue = "One";
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
    return Form(
      key: _formKey,
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            validator: (val) => val.isEmpty ? "Field cannot be empty" : null,
            controller: domicileState,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Domicile State",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            validator: (val) => val.isEmpty ? "Field cannot be empty" : null,
            controller: domicileDistrict,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Domicile District",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            validator: (val) => val.isEmpty ? "Field cannot be empty" : null,
            controller: adharNo,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Adhar No",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            validator: (val) => val.isEmpty ? "Field cannot be empty" : null,
            controller: countryCode,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Country Code",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            validator: (val) => val.isEmpty ? "Field cannot be empty" : null,
            controller: mobileNo,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Mobile Number",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            validator: (val) => val.isEmpty ? "Field cannot be empty" : null,
            controller: permanentAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Permanent Address",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            validator: (val) => val.isEmpty ? "Field cannot be empty" : null,
            controller: permanentAddressState,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Permanent Address State",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            validator: (val) => val.isEmpty ? "Field cannot be empty" : null,
            controller: permanentAddressDistrict,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Permanent address District",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            validator: (val) => val.isEmpty ? "Field cannot be empty" : null,
            controller: permanentAddressCity,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Permanent address City",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            validator: (val) => val.isEmpty ? "Field cannot be empty" : null,
            controller: permanentAddressTehsil,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Permanent address Tehsil",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            validator: (val) => val.isEmpty ? "Field cannot be empty" : null,
            controller: permanentAddressConstituency,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Permanent address Constituency",
            ),
          ),
        ),
        getButton()
      ]),
    );
  }

  Widget getButton() {
    return RaisedButton(
      child: Text("Next"),
      onPressed: () {
        final form = _formKey.currentState;
        if (form.validate()) {
          // Text forms was validated.
          form.save();
          Map map;
          map = getMapObjects(widget.map);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => new CommunicationDetails(
                        map: map,
                      )));
        } else {}
      },
    );
  }

  Map<String, dynamic> getMapObjects(Map map) {
    map["domicileState"] = domicileState.text;
    map["domicileDistrict"] = domicileDistrict.text;
    map["adharNo"] = adharNo.text;
    map["countryCode"] = countryCode.text;
    map["mobileNo"] = mobileNo.text;
    map["permanentAddress"] = permanentAddress.text;
    map["permanentAddressState"] = permanentAddressState.text;
    map["permanentAddressDistrict"] = permanentAddressDistrict.text;
    map["permanentAddressCity"] = permanentAddressCity.text;
    map["permanentAddressTehsil"] = permanentAddressTehsil.text;
    map["permanentAddressConstituency"] = permanentAddressConstituency.text;
    print(map);
    return map;

  }
}
