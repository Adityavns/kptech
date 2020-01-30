// GENERATED CODE - DO NOT MODIFY BY HAND

part of entry;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entry _$EntryFromJson(Map<String, dynamic> json) {
  return Entry()
    ..salutation = json['salutation'] as String
    ..fullName = json['fullName'] as String
    ..gender = json['gender'] as String
    ..date = json['date'] as String
    ..email = json['email'] as String
    ..maritalStatus = json['maritalStatus'] as String
    ..fathersName = json['fathersName'] as String
    ..mothersName = json['mothersName'] as String
    ..guardiansName = json['guardiansName'] as String
    ..religion = json['religion'] as String
    ..category = json['category'] as String
    ..disability = json['disability'] as bool
    ..typeOfDisability = json['typeOfDisability'] as String
    ..domicileState = json['domicileState'] as String
    ..domicileDistrict = json['domicileDistrict'] as String
    ..idName = json['idName'] as String
    ..alternateId = json['alternateId'] as String
    ..idNo = json['idNo'] as int
    ..countryCode = json['countryCode'] as int
    ..mobileNo = json['mobileNo'] as int
    ..educationalQualification = json['educationalQualification'] as String
    ..permanentAddress = json['permanentAddress'] as String
    ..permanentAddressState = json['permanentAddressState'] as String
    ..permanentAddressDistrict = json['permanentAddressDistrict'] as String
    ..permanentAddressPinCode = json['permanentAddressPinCode'] as int
    ..permanentAddressCity = json['permanentAddressCity'] as String
    ..permanentAddressTehsil = json['permanentAddressTehsil'] as String
    ..permanentAddressConstituency =
        json['permanentAddressConstituency'] as String
    ..communicationSameAsPermanentAddress =
        json['communicationSameAsPermanentAddress'] as bool
    ..communicationAddressState = json['communicationAddressState'] as String
    ..communicationAddressDistrict =
        json['communicationAddressDistrict'] as String
    ..communicationAddressPinCode =
        json['communicationAddressPinCode'] as String
    ..communicationAddressCity = json['communicationAddressCity'] as String
    ..communicationAddressTehsil = json['communicationAddressTehsil'] as String
    ..communicationAddressPermanentConstituency =
        json['communicationAddressPermanentConstituency'] as String
    ..trainingStatus = json['trainingStatus'] as String
    ..previousExperienceSector = json['previousExperienceSector'] as String
    ..noOfMonthsOfExperience = json['noOfMonthsOfExperience'] as int
    ..employed = json['employed'] as bool
    ..employmentStatus = json['employmentStatus'] as String
    ..employmentDetails = json['employmentDetails'] as String
    ..heardAboutUs = json['heardAboutUs'] as String;
}

Map<String, dynamic> _$EntryToJson(Entry instance) => <String, dynamic>{
      'salutation': instance.salutation,
      'fullName': instance.fullName,
      'gender': instance.gender,
      'date': instance.date,
      'email': instance.email,
      'maritalStatus': instance.maritalStatus,
      'fathersName': instance.fathersName,
      'mothersName': instance.mothersName,
      'guardiansName': instance.guardiansName,
      'religion': instance.religion,
      'category': instance.category,
      'disability': instance.disability,
      'typeOfDisability': instance.typeOfDisability,
      'domicileState': instance.domicileState,
      'domicileDistrict': instance.domicileDistrict,
      'idName': instance.idName,
      'alternateId': instance.alternateId,
      'idNo': instance.idNo,
      'countryCode': instance.countryCode,
      'mobileNo': instance.mobileNo,
      'educationalQualification': instance.educationalQualification,
      'permanentAddress': instance.permanentAddress,
      'permanentAddressState': instance.permanentAddressState,
      'permanentAddressDistrict': instance.permanentAddressDistrict,
      'permanentAddressPinCode': instance.permanentAddressPinCode,
      'permanentAddressCity': instance.permanentAddressCity,
      'permanentAddressTehsil': instance.permanentAddressTehsil,
      'permanentAddressConstituency': instance.permanentAddressConstituency,
      'communicationSameAsPermanentAddress':
          instance.communicationSameAsPermanentAddress,
      'communicationAddressState': instance.communicationAddressState,
      'communicationAddressDistrict': instance.communicationAddressDistrict,
      'communicationAddressPinCode': instance.communicationAddressPinCode,
      'communicationAddressCity': instance.communicationAddressCity,
      'communicationAddressTehsil': instance.communicationAddressTehsil,
      'communicationAddressPermanentConstituency':
          instance.communicationAddressPermanentConstituency,
      'trainingStatus': instance.trainingStatus,
      'previousExperienceSector': instance.previousExperienceSector,
      'noOfMonthsOfExperience': instance.noOfMonthsOfExperience,
      'employed': instance.employed,
      'employmentStatus': instance.employmentStatus,
      'employmentDetails': instance.employmentDetails,
      'heardAboutUs': instance.heardAboutUs,
    };
