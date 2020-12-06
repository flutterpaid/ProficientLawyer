import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


uploadFile(context) {
  Alert(
      context: context,
      title: 'Upload',
      style: AlertStyle(
        titleStyle: TextStyle(fontSize: 25.0),
        animationType: AnimationType.grow,
        isCloseButton: false,
        alertPadding: EdgeInsets.all(0),
        buttonAreaPadding: EdgeInsets.all(10),
        alertBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0))
      ),
      buttons: [],
      content: SizedBox(
          width: 800,
          height: 300,
          child: DragTarget(builder: (context, candidateData, rejectedData) {
            return Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 15.0,right: 15.0,bottom: 20.0),
              child: Container(
                color: Color(0xffecf0f1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                        Icons.cloud_upload, size: 100.0, color: Color(0xffbdc3c7)),
                    Text('DRAG & DROP',style: TextStyle(color: Color(0xffbdc3c7),fontSize: 30.0),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('your files to assets,or ',style: TextStyle(color: Color(0xffbdc3c7))),
                        InkWell(
                          child: Text('browse',
                            style: TextStyle(fontSize:20.0,decoration: TextDecoration.underline,
                                decorationColor: Colors.blueAccent,color: Colors.blueAccent),),
                        )

                      ],
                    )
                  ],
                ),
              ),
            );
          },)
      )).show();
}