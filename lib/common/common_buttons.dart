import 'package:flutter/material.dart';
import 'package:loanapp/common/common_styles.dart';

Widget textButtonCommonSubmit(
    {required VoidCallback fun,
   required String buttonName,
    required Color color,
    double? elevation}) {
  return TextButton(
      
    child: Container(
      height: 42,width: 230,alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: Text(
        buttonName,
       style: CommonStyles.submitTextStyle15w600white(),
      ),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
          boxShadow: const [
            BoxShadow(
                color: Colors.black38, blurRadius: 3, offset: Offset(1, 1))
          ]),
    ),
    onPressed: fun,
  );
}