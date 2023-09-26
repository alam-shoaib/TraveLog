import 'package:flutter/material.dart';
import 'package:trave_log/widgets/appText.dart';

class AppButton extends StatelessWidget {
  final double size;
  final Color bgColor;
  final Color borderClr;
  final Color color;
  final bool? isIcon;
  final IconData? icon;
  final String? text;
  const AppButton(
      {required this.size,
      required this.color,
      required this.bgColor,
      required this.borderClr,
      this.text = "hi",
      this.icon = Icons.favorite,
      this.isIcon = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: borderClr,
            width: 1.0,
          ),
          color: bgColor),
      child: isIcon == false
          ? Center(
              child: AppText(
              text: text!,
              color: color,
            ))
          : Center(
              child: Icon(
              icon,
              color: color,
            )),
    );
  }
}
