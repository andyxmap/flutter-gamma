import 'package:flutter/material.dart';

import '../pages/request_service_flow.dart';
import '../utils/helper.dart';
import 'input_widget.dart';
import 'primary_button.dart';


class EnterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 25.0,
          ),
          PrimaryButton(
            text: "Entrar",
            onPressed: () {
              Helper.nextPage(context, RequestServiceFlow());
            },
          )
        ],
      ),
    );
  }
}
