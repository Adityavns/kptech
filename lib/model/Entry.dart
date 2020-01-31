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
    else if (email == null || email.length == 0)
      return false;
    else if (maritalStatus == null || maritalStatus.length == 0)
      return false;
    else if (fathersName == null || fathersName.length == 0)
      return false;
    else if (mothersName == null || mothersName.length == 0)
      return false;
    else if (guardiansName == null || guardiansName.length == 0)
      return false;
    else if (religion == null || religion.length == 0)
      return false;
    else if (category == null || category.length == 0)
      return false;
    else if (disability == null)
      return false;
    else if (typeOfDisability == null || typeOfDisability.length == 0)
      return false;
    else if (domicileState == null || domicileState.length == 0)
      return false;
    else if (domicileDistrict == null || domicileDistrict.length == 0)
      return false;
    else if (idName == null || idName.length == 0)
      return false;
    else if (idNo == null || idNo == 0)
      return false;
    else if (countryCode == null || countryCode.toString() != "+91")
      return false;
    else if (mobileNo == null || mobileNo
        .toString()
        .length < 10)
      return false;
    else if (educationalQualification == null ||
        educationalQualification.length == 0)
      return false;
    else if (permanentAddress == null || permanentAddress.length == 0)
      return false;
    else if (permanentAddressState == null || permanentAddressState.length == 0)
      return false;
    else if (permanentAddressDistrict == null ||
        permanentAddressDistrict.length == 0)
      return false;
    else if (permanentAddressPinCode == null ||
        permanentAddressPinCode
            .toString()
            .length < 6)
      return false;
    else if (permanentAddressCity == null || permanentAddressCity.length == 0)
      return false;
    else if (permanentAddressTehsil == null ||
        permanentAddressTehsil.length == 0)
      return false;
    else if (permanentAddressConstituency == null ||
        permanentAddressConstituency.length == 0)
      return false;
    else if (communicationAddressState == null ||
        communicationAddressState.length == 0)
      return false;
    else if (communicationAddressDistrict == null ||
        communicationAddressDistrict.length == 0)
      return false;
    else if (communicationAddressPinCode == null ||
        communicationAddressPinCode.length == 0)
      return false;
    else if (communicationAddressCity == null ||
        communicationAddressCity.length == 0)
      return false;
    else if (communicationAddressTehsil == null ||
        communicationAddressTehsil.length == 0)
      return false;
    else if (communicationAddressPermanentConstituency == null ||
        communicationAddressPermanentConstituency.length == 0)
      return false;
    else if (trainingStatus == null || trainingStatus.length == 0)
      return false;
    else if (previousExperienceSector == null ||
        previousExperienceSector.length == 0)
      return false;
    else if (noOfMonthsOfExperience == null ||
        noOfMonthsOfExperience < 1 ||
        noOfMonthsOfExperience > 500)
      return false;
    else if (employmentStatus == null || employmentStatus.length == 0)
      return false;
    else if (employmentDetails == null || employmentDetails.length == 0)
      return false;
    else if (heardAboutUs == null || heardAboutUs.length == 0) return false;
    return true;
  }

  bool validateString(String string) {
    if (string == null || string.length == 0)
      return false;
    else
      return true;
  }

  bool validateBooleans(bool booleans) {
    return booleans != null ? true : false;
  }

  bool validateInt(int integer, int valueToCompareWith) {
    if (integer != null || integer < valueToCompareWith)
      return false;
    else
      return true;
  }
}
