import 'package:flutter/material.dart';

import '../Common/color.dart';
import '../common/common_buttons.dart';
import '../common/common_styles.dart';
import '../common/coomon_text_form_field.dart';
import '../common/utils.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _mobilenumbercontroller= TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
             
          Image.asset("assets/loan.jpg"),
             Utils.getSizedBox(height: 50),
              NumberTextField(_mobilenumbercontroller, 'Mobile Number',  context),
            Utils.getSizedBox(height:30),
            textButtonCommonSubmit(color: ColorsConsts.primary,
            fun: () { 
              Navigator.pushNamed(context, 'VerifyScreen');
             }, buttonName: 'Login'),
             Utils.getSizedBox(height:200),
           Text.rich( TextSpan(
                text: 'By logging in you are agreeing to our\n', style: CommonStyles.labelText15w500Grey(),
                children: <InlineSpan>[
                  TextSpan(
                    text: 'Terms and Conditions',
                    style: CommonStyles.labelText15w500Blue(),
                  ),TextSpan(
                    text: ' and ',
                    style: CommonStyles.labelText15w500Grey(),
                  ),
                  TextSpan(
                    text: 'Privacy Policy. ',
                    style: CommonStyles.labelText15w500Blue(),
                  ),
                ]
              )),
            ],
            
          ),
        ),
      ),
    );
  }
}

