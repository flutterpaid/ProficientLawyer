import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/app_colors.dart';
import 'package:lawyer/app_theme/text_styles.dart';
import 'package:lawyer/model/oppositeparty_model.dart';
import 'package:lawyer/ui/reviewsave.dart';
import 'package:lawyer/widgets/drawer.dart';

import 'package:provider/provider.dart';

class OppositeParty extends StatelessWidget {
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
              "Add New Cases",
              style: AppTextStyles.s3(Colors.white),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Consumer<OppositePartyModel>(builder: (context, client, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'OPPOSITE PARTY DETAILS',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onChanged: client.setName,
                      textCapitalization: TextCapitalization.words,
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter State';
                        return null;
                      },
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      'Rank',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onChanged: client.setRank,
                      textCapitalization: TextCapitalization.words,
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter District';
                        return null;
                      },
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      'Address',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onChanged: client.setAddress,
                      textCapitalization: TextCapitalization.words,
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter Court Complex';
                        return null;
                      },
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      'Advocate Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onChanged: client.setAN,
                      textCapitalization: TextCapitalization.words,
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter Court Name';
                        return null;
                      },
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      'Phone No.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onChanged: client.setPh,
                      textCapitalization: TextCapitalization.words,
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter Case Type';
                        return null;
                      },
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      'Other Details',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onChanged: client.setOD,
                      textCapitalization: TextCapitalization.characters,
                      // validator: (value) {
                      //   if (value.isEmpty)
                      //     return 'Please enter Other Details';
                      //   return null;
                      // },
                    ),
                    SizedBox(height: 40.0),
                    Center(
                        child: FlatButton(
                      onPressed: () {},
                      child: Text('+ Add more Party'),
                      color: Color(0xffbdc3c7),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    )),
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
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Previous',
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
                                builder: (context) => ReviewAndSave()));
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
