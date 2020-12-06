import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/text_styles.dart';

class BlueButton extends StatelessWidget {
  final String text;
  final Icon icon;
  BlueButton({this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(130)),
      width: 141,
      height: 37,
      child: FlatButton(
          onPressed: () {},
          child: Row(
            children: [
              icon,
              Text(
                text,
                style: AppTextStyles.textStyle(size: 10, color: Colors.white),
              ),
            ],
          )),
    );
  }
}
