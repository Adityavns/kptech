library entry;

import 'package:json_annotation/json_annotation.dart';

part 'Entry.g.dart';

@JsonSerializable()
class Entry {
  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);

  Map<String, dynamic> toJson(Entry instance) => _$EntryToJson(instance);

  String salutation;
  String fullName;
  String gender;
  String date;
  String email;
  String maritalStatus;
  String fathersName;
  String mothersName;
  String guardiansName;
  String religion;
  String category;
  bool disability;
  String typeOfDisability;
  String domicileState;
  String domicileDistrict;
  String idName;
  String alternateId;
  int idNo;
  int countryCode;
  int mobileNo;
  String educationalQualification;
  String permanentAddress;
  String permanentAddressState;
  String permanentAddressDistrict;
  int permanentAddressPinCode;
  String permanentAddressCity;
  String permanentAddressTehsil;
  String permanentAddressConstituency;
  bool communicationSameAsPermanentAddress;
  String communicationAddressState;
  String communicationAddressDistrict;
  String communicationAddressPinCode;
  String communicationAddressCity;
  String communicationAddressTehsil;
  String communicationAddressPermanentConstituency;
  String trainingStatus;
  String previousExperienceSector;
  int noOfMonthsOfExperience;
  bool employed;
  String employmentStatus;
  String employmentDetails;
  String heardAboutUs;

  Entry();

  bool validate() {
    if (salutation == null || salutation.length == 0)
      return false;
    else if (fullName == null || fullName.length == 0)
      return false;
    else if (gender == null || gender.length == 0)
      return false;
    else if (date == null || date.length == 0)
      return false;
    else if (email == null || email.length == 0) return false;
    return true;
  }

  bool validateString(String string) {
    if (string == null || string.length == 0)
      return false;
    else
      return true;
  }

}
