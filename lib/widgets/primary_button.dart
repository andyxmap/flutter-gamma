import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/constants.dart';

class PrimaryButton extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;
  PrimaryButton({this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: ScreenUtil().setHeight(59.0),
        decoration: BoxDecoration(
          color: Constants.primaryColor,
          borderRadius: BorderRadius.circular(32.0),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(45, 93, 156, 0.42),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(5, 5),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text ?? "",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 20,
              color: Constants.greyColor
            ),
          ),
        ),
      ),
    );
  }
}
