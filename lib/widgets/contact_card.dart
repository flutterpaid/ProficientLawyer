import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/screen_util-extension.dart';
import 'package:lawyer/app_theme/text_styles.dart';

class ContactCard extends StatelessWidget {
  final String name, number, picPath;
  ContactCard({this.name, this.number, this.picPath});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 235.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage(picPath),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              name,
              style: AppTextStyles.textStyle(
                  fontType: FontType.bold, size: 30.f, color: Colors.black),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              number,
              style: AppTextStyles.textStyle(
                  fontType: FontType.regular,
                  size: 20.f,
                  color: Colors.black38),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 210.w,
              height: 55.h,
              decoration: BoxDecoration(
                  color: Color(0xFFEEECFC),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.blue,
                      size: 15,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "CONTACT",
                      style: AppTextStyles.textStyle(
                          fontType: FontType.semiBold,
                          color: Colors.blue,
                          size: 20.f),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
