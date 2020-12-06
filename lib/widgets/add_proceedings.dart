import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/screen_util-extension.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../app_theme/text_styles.dart';

Alert showAlertProceedings(context) {
  double widthSc = MediaQuery.of(context).size.width;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  return Alert(
    style: AlertStyle(
      isCloseButton: false,
      buttonAreaPadding: EdgeInsets.only(bottom: 0, top: 40),
      alertPadding: EdgeInsets.all(0),
      animationType: AnimationType.grow,
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
        side: BorderSide(
          color: Colors.grey,
        ),
      ),
    ),
    title: "",
    context: context,
    content: Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                "ADD PROCEEDINGS",
                style: AppTextStyles.textStyle(
                    fontType: FontType.semiBold,
                    color: Colors.grey,
                    size: 30.f),
              )),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'TITLE'),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value.length < 2) {
                      return 'date not long enough';
                    } else
                      return null;
                  },
                ),
              ),
              SizedBox(
                width: 100.h,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'DATE'),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value.length < 2) {
                      return 'Name not long enough';
                    } else
                      return null;
                  },
                ),
              ),
            ],
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'REMARK'),
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value.length < 2) {
                return 'Name not long enough';
              } else
                return null;
            },
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'ADVOCATE'),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value.length < 2) {
                      return 'Name not long enough';
                    } else
                      return null;
                  },
                ),
              ),
              SizedBox(
                width: 100.h,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'ADJOURNED TO'),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value.length < 2) {
                      return 'Name not long enough';
                    } else
                      return null;
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    buttons: [
      DialogButton(
        width: widthSc - 4,
        padding: EdgeInsets.all(0),
        radius: BorderRadius.circular(0),
        margin: EdgeInsets.all(0),
        child: Center(
            child: Text(
          "Add Proceeding",
          style: AppTextStyles.textStyle(
              fontType: FontType.bold, size: 30.f, color: Colors.white),
        )),
        onPressed: () {
          Navigator.pop(context);
        },
        color: Colors.blue,
      ),
    ],
  );
}
