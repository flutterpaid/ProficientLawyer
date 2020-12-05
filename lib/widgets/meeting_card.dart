import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/app_colors.dart';
import 'package:lawyer/app_theme/text_styles.dart';

class MeetCard extends StatelessWidget {
  final String name;
  final String time;
  final String place;
  MeetCard({this.name, this.place, this.time});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {},
      title: Container(
        height: 100,
        child: Card(
          elevation: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    name,
                    style: AppTextStyles.textStyle(
                        fontType: FontType.bold, size: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(time),
                      SizedBox(
                        width: 20,
                      ),
                      Text(place)
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.edit,
                      color: AppColor.appbar,
                    ),
                  ),
                  Text("Postpone")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                  Text("Delete")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
