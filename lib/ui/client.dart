import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/app_colors.dart';
import 'package:lawyer/app_theme/text_styles.dart';
import 'package:lawyer/model/clientmodel.dart';
import 'package:lawyer/widgets/drawer.dart';
import 'opposite_party.dart';
import 'package:provider/provider.dart';

class ClientDetails extends StatelessWidget {
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
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Consumer<ClientModel>(builder: (context, client, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CLIENT DETAILS',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Client Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onChanged: client.setCName,
                      textCapitalization: TextCapitalization.words,
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter Client Name';
                        return null;
                      },
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      'Client Rank',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onChanged: client.setCrank,
                      textCapitalization: TextCapitalization.words,
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter Client Rank';
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
                        if (value.isEmpty) return 'Please enter Address';
                        return null;
                      },
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      'Mail ID',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onChanged: client.setMail,
                      textCapitalization: TextCapitalization.words,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter Mail ID';
                        return null;
                      },
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      'Phone No.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onChanged: client.setPN,
                      textCapitalization: TextCapitalization.words,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value.isEmpty)
                          return 'Please enter Phone No.';
                        else if (value.length != 10)
                          return 'Enter valid Phone No.';
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
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter Other Details';
                        return null;
                      },
                    ),
                    SizedBox(height: 40.0),
                    Center(
                        child: FlatButton(
                      onPressed: () {},
                      child: Text('+ Add more Clients'),
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
                                builder: (context) => OppositeParty()));
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
