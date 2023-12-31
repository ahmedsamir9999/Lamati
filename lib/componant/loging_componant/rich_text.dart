import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constant.dart';

class FixedRichText extends StatelessWidget {
  // LoginFixedRichText
  final String? leftLabel;
  final String? rightLabel;
  final Function()? onTab;
  final bool ? isForgetPassScreen;

  const FixedRichText({Key? key, this.leftLabel, this.rightLabel, this.onTab,this.isForgetPassScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl, child: RichText(
        text: TextSpan(
            text: leftLabel,
            style:  TextStyle(
              color: K.blackColor, fontSize: 18.sp, ),
            children: [
              TextSpan(
                recognizer: TapGestureRecognizer()..onTap = onTab,
                text: rightLabel,
                style:  TextStyle(fontSize: isForgetPassScreen==true?25.sp:21.sp, color: K.mainColor,fontWeight: isForgetPassScreen==true?FontWeight.bold:FontWeight.normal),
              )
            ])));
  }
}
