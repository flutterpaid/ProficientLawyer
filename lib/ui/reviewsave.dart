import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/app_colors.dart';
import 'package:lawyer/model/reviewsavemodel.dart';
import 'package:lawyer/ui/case_details_page.dart';
import 'package:lawyer/widgets/drawer.dart';

import 'package:provider/provider.dart';

import 'connected_casesview.dart';

class ReviewAndSave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 5.0,
          centerTitle: true,
          title: Text('Review & Save Case'),
          backgroundColor: Color(0xff2c3e50),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: AppColor.profic_font,
                ),
              ),
            )
          ],
          bottom: TabBar(
            indicatorColor: Color(0xff3498db),
            labelColor: Color(0xff3498db),
            indicator: BoxDecoration(color: Colors.white),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                text: 'Case Details',
              ),
              Tab(
                text: 'Client Details',
              ),
              Tab(
                text: 'Opposite Party',
              )
            ],
          ),
        ),
        body: Consumer<ReviewSaveModel>(
          builder: (context, save, child) => TabBarView(children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'Case At',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.radio}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 25.0),
                        Text(
                          'State',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.state}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 25.0),
                        Text(
                          'District',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.district}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 25.0),
                        Text(
                          'Court Complex',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.courtComplex}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 25.0),
                        Text(
                          'Case Type',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.caseType}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 25.0),
                        Text('Connected To', style: TextStyle(fontSize: 16.0)),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.connectedTo}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 40.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'Client Name',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.clientName}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 25.0),
                        Text(
                          'Client Rank',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.clientRank}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 25.0),
                        Text(
                          'Address',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.addressClient}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 25.0),
                        Text(
                          'Mail ID',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.mailID}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 25.0),
                        Text(
                          'Phone No.',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.phnNo}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 25.0),
                        Text(
                          'Other Details',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.otherDetailsClient}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 40.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'Name',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.partyName}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 25.0),
                        Text(
                          'Rank',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.partyRank}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 25.0),
                        Text(
                          'Address',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.addressParty}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 25.0),
                        Text(
                          'Advocate Name',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.advocateName}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 25.0),
                        Text(
                          'Phone No.',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.phnNoParty}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 25.0),
                        Text(
                          'Other Details',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${save.otherDetailsParty}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.0),
                        ),
                        Divider(),
                        SizedBox(height: 40.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
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
                          Navigator.pushReplacementNamed(
                              context, CaseDetailsPage.id);
                        },
                        child: Text(
                          'Save Case',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      color: Color(0xff3498db)),
                ),
              ]),
          elevation: 0,
        ),
      ),
    );
  }
}
