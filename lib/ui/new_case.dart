import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lawyer/app_theme/app_colors.dart';
import 'package:lawyer/app_theme/text_styles.dart';
import 'package:lawyer/model/casemodel.dart';
import 'package:lawyer/widgets/drawer.dart';
import 'package:provider/provider.dart';

import 'client.dart';

class NewCase extends StatelessWidget {
  static const String id = "NewCase";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.appbar,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: AppColor.profic_font,
              ),
            ),
          )
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Add new case",
              style: AppTextStyles.s3(Colors.white),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Consumer<CaseModel>(builder: (context, cases, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 40.0),
                child: Text(
                  'CASE DETAILS',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20.0),
              RadioListTile(
                title: Text('Supreme Court'),
                value: 1,
                groupValue: cases.radioValue,
                onChanged: cases.setRadioValue,
                activeColor: Color(0xFF2c3e50),
              ),
              RadioListTile(
                title: Text('High Court'),
                value: 2,
                groupValue: cases.radioValue,
                onChanged: cases.setRadioValue,
                activeColor: Color(0xFF2c3e50),
              ),
              RadioListTile(
                title: Text('District Court'),
                value: 3,
                groupValue: cases.radioValue,
                onChanged: cases.setRadioValue,
                activeColor: Color(0xFF2c3e50),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'State',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onChanged: cases.setState,
                      textCapitalization: TextCapitalization.words,
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter State';
                        return null;
                      },
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      'District',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onChanged: cases.setDistrict,
                      textCapitalization: TextCapitalization.words,
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter District';
                        return null;
                      },
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      'Court Complex',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onChanged: cases.setCC,
                      textCapitalization: TextCapitalization.words,
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter Court Complex';
                        return null;
                      },
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      'Court Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onChanged: cases.setCN,
                      textCapitalization: TextCapitalization.words,
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter Court Name';
                        return null;
                      },
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      'Case Type',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onChanged: cases.setCT,
                      textCapitalization: TextCapitalization.words,
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter Case Type';
                        return null;
                      },
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      'Connected to',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onChanged: cases.setConTo,
                      textCapitalization: TextCapitalization.characters,
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter Connected Case';
                        return null;
                      },
                      //validator: ,
                    ),
                    SizedBox(height: 25.0),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 60.0,
                  child: FlatButton(
                    onPressed: null,
                    child: Text(
                      'Step 1',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  color: Color(0xff2c3e50),
                ),
              ),
              Expanded(
                child: Container(
                    height: 60.0,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ClientDetails()));
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    color: Color(0xff3498db)),
              ),
            ]),
        elevation: 0,
      ),
    );
  }
}
