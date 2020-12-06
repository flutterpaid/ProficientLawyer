import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/screen_util-extension.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../app_theme/text_styles.dart';

Alert showAlert(context) {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  double widthSc = MediaQuery.of(context).size.width;
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
    content: Container(
      width: 1000,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "SCHEDULE DETAILS",
                  style: AppTextStyles.textStyle(
                      fontType: FontType.semiBold,
                      color: Colors.grey,
                      size: 30.f),
                )),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'DATE'),
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
                    decoration: const InputDecoration(labelText: 'TIME'),
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
              decoration: const InputDecoration(labelText: 'MESSAGE'),
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
                    decoration: const InputDecoration(labelText: 'TITLE'),
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
                    decoration: const InputDecoration(labelText: 'LABEL'),
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
    ),
    buttons: [
      DialogButton(
        width: widthSc - 4,
        padding: EdgeInsets.all(0),
        radius: BorderRadius.circular(0),
        margin: EdgeInsets.all(0),
        child: Center(
            child: Text(
          "Add Schedule",
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
