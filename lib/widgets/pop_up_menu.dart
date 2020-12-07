import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/app_colors.dart';
import 'package:lawyer/app_theme/text_styles.dart';

class PopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        icon: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.person,
            color: AppColor.profic_font,
          ),
        ),
        onSelected: (value) {
          print(value.toString());
        },
        itemBuilder: (context) => [
              PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade200,
                          child: Icon(
                            Icons.person,
                            color: AppColor.profic_font,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'RO Karn',
                            style: AppTextStyles.textStyle(
                                fontType: FontType.bold),
                          ),
                          Text(
                            "Individual account",
                            style: AppTextStyles.textStyle(
                                color: Colors.grey,
                                fontType: FontType.light,
                                size: 14),
                          )
                        ],
                      )
                    ],
                  )),
              PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade200,
                          child: Icon(
                            Icons.person,
                            color: AppColor.profic_font,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rahul Sharma',
                            style: AppTextStyles.textStyle(
                                fontType: FontType.bold),
                          ),
                          Text(
                            "Office account account",
                            style: AppTextStyles.textStyle(
                                color: Colors.grey,
                                fontType: FontType.light,
                                size: 14),
                          )
                        ],
                      )
                    ],
                  )),
              PopupMenuItem(
                  value: 3,
                  child: Column(
                    children: [
                      Text(
                        "Account Settings",
                        style: AppTextStyles.textStyle(
                            color: Colors.black,
                            fontType: FontType.light,
                            size: 14),
                      ),
                    ],
                  )),
              PopupMenuItem(
                  value: 4,
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          "Subscription Management",
                          style: AppTextStyles.textStyle(
                              color: Colors.black,
                              fontType: FontType.light,
                              size: 14),
                        ),
                      ],
                    ),
                  )),
              PopupMenuItem(
                  value: 5,
                  child: Container(
                      width: double.infinity,
                      child: FlatButton(
                        onPressed: () {},
                        color: Colors.redAccent,
                        child: Text(
                          "3 days left to Renew",
                          style: AppTextStyles.textStyle(color: Colors.white),
                        ),
                      ))),
            ]);
  }
}
