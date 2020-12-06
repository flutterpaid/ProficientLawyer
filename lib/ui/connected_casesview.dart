import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

List connectedCases = ['OS/2014/1923', 'OS/2016/1923', 'OS/2017/1920', 'OS/2020/1823'];

connectedCaseAlert(context) {
  Alert(
      context: context,
      title: 'Connected Cases',
      style: AlertStyle(
        animationType: AnimationType.grow,
        isCloseButton: false,
        alertPadding: EdgeInsets.all(0),
        buttonAreaPadding: EdgeInsets.all(15),
        alertBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0))
      ),
      buttons: [],
      content: SizedBox(
        width: 800,
        height: 300,
        child: ListView.separated(
            separatorBuilder: (context, index) => Divider(),
            itemCount: connectedCases.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  '${connectedCases[index]}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              );
            }),
      )).show();
}
