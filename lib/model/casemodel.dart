import 'package:flutter/foundation.dart';

class CaseModel extends ChangeNotifier{
  var radioValue;
  var _radioValue = '';
  var _state;
  var _district;
  var _courtComplex;
  var _courtName;
  var _caseType;
  var _connectedTo;

  get radio=>_radioValue;
  get state=>_state;
  get district=>_district;
  get courtComplex=>_courtComplex;
  get courtName=>_courtName;
  get caseType=>_caseType;
  get connectedTo=>_connectedTo;

  void setRadioValue(value){
    radioValue=value;
    switch(radioValue){
      case 1: _radioValue = 'Supreme Court';
      break;
      case 2:_radioValue = 'High Court';
      break;
      case 3:_radioValue = 'District Court';
      break;
    }

    notifyListeners();
  }
  void setState(state){
    _state=state;
    print(_state);
  }
  void setDistrict(district){
    _district=district;
  }
  void setCC(courtComplex){
    _courtComplex=courtComplex;
  }
  void setCN(courtName){
    _courtName=courtName;
  }
  void setCT(caseType){
    _caseType=caseType;
  }
  void setConTo(connectedTo){
    _connectedTo=connectedTo;
  }
}