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

//  Map<String, dynamic> toMap() {
//    Map<String, dynamic> map = Map();
//    map['salutation'] = salutation;
//    map['fullName'] = fullName;
//    map['gender'] = gender;
//    map['date'] = date;
//    map['email'] = email;
//    map['maritalStatus'] = maritalStatus;
//    map['fathersName'] = fathersName;
//    map['mothersName'] = mothersName;
//    map['guardiansName'] = guardiansName;
//    map['religion'] = religion;
//    map['category'] = category;
//    map['disability'] = disability;
//    map['typeOfDisability'] = typeOfDisability;
//    map['domicileState'] = domicileState;
//    map['domicileState'] = domicileDistrict;
//    map['idName'] = idName;
//    map['alternateId'] = alternateId;
//    map['idNo'] = idNo;
//    map['countryCode'] = countryCode;
//    map['mobileNo'] = mobileNo;
//    map['educationalQualification'] = educationalQualification;
//    map['permanentAddress'] = permanentAddress;
//    map['permanentAddressState'] = permanentAddressState;
//    map['permanentAddressDistrict'] = permanentAddressDistrict;
//    map['permanentAddressPinCode'] = permanentAddressPinCode;
//    map['permanentAddressCity'] = permanentAddressCity;
//    map['permanentAddressTehsil'] = permanentAddressTehsil;
//    map['permanentAddressConstituency'] = permanentAddressConstituency;
//    map['communicationSameAsPermanentAddress'] =
//        communicationSameAsPermanentAddress;
//    map['communicationAddressState'] = communicationAddressState;
//    map['communicationAddressDistrict'] = communicationAddressDistrict;
//    map['communicationAddressPinCode'] = communicationAddressPinCode;
//    map['communicationAddressCity'] = communicationAddressCity;
//    map['communicationAddressTehsil'] = communicationAddressTehsil;
//    map['communicationAddressPermanentConstituency'] =
//        communicationAddressPermanentConstituency;
//    map['trainingStatus'] = trainingStatus;
//    map['previousExperienceSector'] = previousExperienceSector;
//    map['noOfMonthsOfExperience'] = noOfMonthsOfExperience;
//    map['employed'] = employed;
//    map['employmentStatus'] = employmentStatus;
//    map['employmentDetails'] = employmentDetails;
//    map['heardAboutUs'] = heardAboutUs;
//    return map;
//  }
}