import 'package:flutter/foundation.dart';

class OppositePartyModel extends ChangeNotifier{
  var _name;
  var _rank;
  var _address;
  var _advocateName;
  var _phnNo;
  var _otherDetails;

  get partyName=>_name;
  get rank=>_rank;
  get address=>_address;
  get advocateName=>_advocateName;
  get phnNo=>_phnNo;
  get otherDetails=>_otherDetails;

  void setName(name) {
    _name = name;
  }

  void setRank(rank) {
    _rank = rank;
  }

  void setAddress(address) {
    _address = address;
  }

  void setAN(advocateName) {
    _advocateName = advocateName;
  }

  void setPh(phnNo) {
    _phnNo = phnNo;
  }

  void setOD(otherDetails) {
    _otherDetails = otherDetails;
  }
}