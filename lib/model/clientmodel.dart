import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ClientModel extends ChangeNotifier {
  var _clientName;
  var _clientRank;
  var _address;
  var _mailID;
  var _phnNo;
  var _otherDetails;

  get clientName=>_clientName;
  get clientRank=>_clientRank;
  get address=>_address;
  get mailID=>_mailID;
  get phnNo=>_phnNo;
  get otherDetails=>_otherDetails;


  void setCName(clientName) {
    _clientName = clientName;
  }

  void setCrank(clientRank) {
    _clientRank = clientRank;
  }

  void setAddress(address) {
    _address = address;
  }

  void setMail(mailID) {
    _mailID = mailID;
  }

  void setPN(phnNo) {
    _phnNo = phnNo;
  }

  void setOD(otherDetails) {
    _otherDetails = otherDetails;
  }
}
