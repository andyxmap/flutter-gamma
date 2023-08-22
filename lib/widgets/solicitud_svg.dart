// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SVGImage extends StatelessWidget {
  bool active;
  SVGImage({
    Key? key,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
                "assets/svg/software.svg",
                color: active ? Colors.red : null,
              );
  }
}
