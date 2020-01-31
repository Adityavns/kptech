import 'package:kptech/model/Entry.dart';

class Bloc {
  static Bloc _instance;
  Entry _entryToBeSent;

  Bloc.internal() {
    _entryToBeSent = new Entry();
  }

  void submit() {}

  static Bloc getInstance() {
    if (_instance == null) _instance = new Bloc.internal();
    return _instance;
  }

  void setSalutation(String salutation) {
    _entryToBeSent.salutation = salutation;
  }

  String get salutation => _entryToBeSent.salutation;

  set salutation(String value) {
    _entryToBeSent.salutation = value;
  }

  String get fullName => _entryToBeSent.fullName;

  set fullName(String value) {
    _entryToBeSent.fullName = value;
  }

  String get gender => _entryToBeSent.gender;

  set gender(String value) {
    _entryToBeSent.gender = value;
  }

  String get date => _entryToBeSent.date;

  set date(String value) {
    _entryToBeSent.date = value;
  }

  String get email => _entryToBeSent.email;

  set email(String value) {
    _entryToBeSent.email = value;
  }

  String get maritalStatus => _entryToBeSent.maritalStatus;

  set maritalStatus(String value) {
    _entryToBeSent.maritalStatus = value;
  }

  String get fathersName => _entryToBeSent.fathersName;

  set fathersName(String value) {
    _entryToBeSent.fathersName = value;
  }

  String get mothersName => _entryToBeSent.mothersName;

  set mothersName(String value) {
    _entryToBeSent.mothersName = value;
  }

  String get guardiansName => _entryToBeSent.guardiansName;

  set guardiansName(String value) {
    _entryToBeSent.guardiansName = value;
  }

  String get religion => _entryToBeSent.religion;

  set religion(String value) {
    _entryToBeSent.religion = value;
  }

  String get category => _entryToBeSent.category;

  set category(String value) {
    _entryToBeSent.category = value;
  }

  bool get disability => _entryToBeSent.disability;

  set disability(bool value) {
    _entryToBeSent.disability = value;
  }

  String get typeOfDisability => _entryToBeSent.typeOfDisability;

  set typeOfDisability(String value) {
    _entryToBeSent.typeOfDisability = value;
  }

  String get domicileState => _entryToBeSent.domicileState;

  set domicileState(String value) {
    _entryToBeSent.domicileState = value;
  }

  String get domicileDistrict => _entryToBeSent.domicileDistrict;

  set domicileDistrict(String value) {
    _entryToBeSent.domicileDistrict = value;
  }

  String get idName => _entryToBeSent.idName;

  set idName(String value) {
    _entryToBeSent.idName = value;
  }

  String get alternateId => _entryToBeSent.alternateId;

  set alternateId(String value) {
    _entryToBeSent.alternateId = value;
  }

  int get idNo => _entryToBeSent.idNo;

  set idNo(int value) {
    _entryToBeSent.idNo = value;
  }

  int get countryCode => _entryToBeSent.countryCode;

  set countryCode(int value) {
    _entryToBeSent.countryCode = value;
  }

  int get mobileNo => _entryToBeSent.mobileNo;

  set mobileNo(int value) {
    _entryToBeSent.mobileNo = value;
  }

  String get educationalQualification =>
      _entryToBeSent.educationalQualification;

  set educationalQualification(String value) {
    _entryToBeSent.educationalQualification = value;
  }

  String get permanentAddress => _entryToBeSent.permanentAddress;

  set permanentAddress(String value) {
    _entryToBeSent.permanentAddress = value;
  }

  String get permanentAddressState => _entryToBeSent.permanentAddressState;

  set permanentAddressState(String value) {
    _entryToBeSent.permanentAddressState = value;
  }

  String get permanentAddressDistrict =>
      _entryToBeSent.permanentAddressDistrict;

  set permanentAddressDistrict(String value) {
    _entryToBeSent.permanentAddressDistrict = value;
  }

  int get permanentAddressPinCode => _entryToBeSent.permanentAddressPinCode;

  set permanentAddressPinCode(int value) {
    _entryToBeSent.permanentAddressPinCode = value;
  }

  String get permanentAddressCity => _entryToBeSent.permanentAddressCity;

  set permanentAddressCity(String value) {
    _entryToBeSent.permanentAddressCity = value;
  }

  String get permanentAddressTehsil => _entryToBeSent.permanentAddressTehsil;

  set permanentAddressTehsil(String value) {
    _entryToBeSent.permanentAddressTehsil = value;
  }

  String get permanentAddressConstituency =>
      _entryToBeSent.permanentAddressConstituency;

  set permanentAddressConstituency(String value) {
    _entryToBeSent.permanentAddressConstituency = value;
  }

  bool get communicationSameAsPermanentAddress =>
      _entryToBeSent.communicationSameAsPermanentAddress;

  set communicationSameAsPermanentAddress(bool value) {
    _entryToBeSent.communicationSameAsPermanentAddress = value;
  }

  String get communicationAddressState =>
      _entryToBeSent.communicationAddressState;

  set communicationAddressState(String value) {
    _entryToBeSent.communicationAddressState = value;
  }

  String get communicationAddressDistrict =>
      _entryToBeSent.communicationAddressDistrict;

  set communicationAddressDistrict(String value) {
    _entryToBeSent.communicationAddressDistrict = value;
  }

  String get communicationAddressPinCode =>
      _entryToBeSent.communicationAddressPinCode;

  set communicationAddressPinCode(String value) {
    _entryToBeSent.communicationAddressPinCode = value;
  }

  String get communicationAddressCity =>
      _entryToBeSent.communicationAddressCity;

  set communicationAddressCity(String value) {
    _entryToBeSent.communicationAddressCity = value;
  }

  String get communicationAddressTehsil =>
      _entryToBeSent.communicationAddressTehsil;

  set communicationAddressTehsil(String value) {
    _entryToBeSent.communicationAddressTehsil = value;
  }

  String get communicationAddressPermanentConstituency =>
      _entryToBeSent.communicationAddressPermanentConstituency;

  set communicationAddressPermanentConstituency(String value) {
    _entryToBeSent.communicationAddressPermanentConstituency = value;
  }

  String get trainingStatus => _entryToBeSent.trainingStatus;

  set trainingStatus(String value) {
    _entryToBeSent.trainingStatus = value;
  }

  String get previousExperienceSector =>
      _entryToBeSent.previousExperienceSector;

  set previousExperienceSector(String value) {
    _entryToBeSent.previousExperienceSector = value;
  }

  int get noOfMonthsOfExperience => _entryToBeSent.noOfMonthsOfExperience;

  set noOfMonthsOfExperience(int value) {
    _entryToBeSent.noOfMonthsOfExperience = value;
  }

  bool get employed => _entryToBeSent.employed;

  set employed(bool value) {
    _entryToBeSent.employed = value;
  }

  String get employmentStatus => _entryToBeSent.employmentStatus;

  set employmentStatus(String value) {
    _entryToBeSent.employmentStatus = value;
  }

  String get employmentDetails => _entryToBeSent.employmentDetails;

  set employmentDetails(String value) {
    _entryToBeSent.employmentDetails = value;
  }

  String get heardAboutUs => _entryToBeSent.heardAboutUs;

  set heardAboutUs(String value) {
    _entryToBeSent.heardAboutUs = value;
  }

  void sendMapToServer(Map map) {}
}
