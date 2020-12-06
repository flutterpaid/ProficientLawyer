import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'casemodel.dart';
import 'clientmodel.dart';
import 'injection.dart';
import 'oppositeparty_model.dart';

class ReviewSaveModel extends ChangeNotifier {
  ReviewSaveModel() {
    init();
  }
  var client = locator<ClientModel>();
  var cases = locator<CaseModel>();
  var oppo = locator<OppositePartyModel>();

  var radio;
  var state;
  var district;
  var courtComplex;
  var caseType;
  var connectedTo;
  var clientName;
  var clientRank;
  var addressClient;
  var mailID;
  var phnNo;
  var otherDetailsClient;
  var partyName;
  var partyRank;
  var addressParty;
  var advocateName;
  var phnNoParty;
  var otherDetailsParty;


  void init()
  {
    getRadio();
    getState();
    getCourtComplex();
    getCaseType();
    getConnectedTo();
    getDistrict();
    getClientName();
    getClientRank();
    getAddressClient();
    getPhnNo();
    getMailID();
    getOtherDetails();
    getPartName();
    getPartyRank();
    getPartyAddress();
    getPartyPhnNn();
    getAdvocateName();
    getPartyOtherDetails();
  }
  void getRadio()
  {
    radio=cases.radio;
    notifyListeners();
    print(radio);
  }
  void getState(){
    state=cases.state;
    notifyListeners();
    print(cases.state);
  }
  void getDistrict()
  {
    district=cases.district;
    notifyListeners();
  }
  void getCourtComplex()
  {
    courtComplex=cases.courtComplex;
    notifyListeners();
  }
  void getCaseType()
  {
    caseType=cases.caseType;
    notifyListeners();
  }
  void getConnectedTo()
  {
    connectedTo=cases.connectedTo;
    notifyListeners();
  }
  void getClientName()
  {
    clientName=client.clientName;
    notifyListeners();
  }
  void getClientRank()
  {
    clientRank=client.clientRank;
    notifyListeners();
  }
  void getAddressClient()
  {
    addressClient=client.address;
    notifyListeners();
  }
  void getMailID()
  {
    mailID=client.mailID;
    notifyListeners();
  }
  void getPhnNo()
  {
    phnNo=client.phnNo;
    notifyListeners();

  }
  void getOtherDetails()
  {
    otherDetailsClient=client.otherDetails;
    notifyListeners();
  }
  void getPartName(){
    partyName=oppo.partyName;
    notifyListeners();
  }
  void getPartyRank()
  {
    partyRank=oppo.rank;
    notifyListeners();

  }
  void getPartyAddress(){
    addressParty=oppo.address;
    notifyListeners();
  }
  void getAdvocateName(){
    advocateName=oppo.advocateName;
    notifyListeners();
  }
  void getPartyPhnNn(){
    phnNoParty=oppo.phnNo;
    notifyListeners();
  }
  void getPartyOtherDetails(){
    otherDetailsParty=oppo.otherDetails;
    notifyListeners();
  }

}