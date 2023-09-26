import 'package:flutter/material.dart';
import 'package:trave_log/msic/AppColors.dart';
import 'package:trave_log/widgets/appText.dart';

class ResponsiveButton extends StatelessWidget {
  final bool isreponsive;
  final double? width;
  const ResponsiveButton({this.isreponsive = false, this.width=120, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isreponsive==true?double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color:AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment:isreponsive==true?MainAxisAlignment.spaceBetween: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: isreponsive==true?AppText(text: "Book Tickets now",color: Colors.white,):Container(),
            ),
            Image.asset("img/button-one.png"),
          ],
        ),
      ),
    );
  }
}
