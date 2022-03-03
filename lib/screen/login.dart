import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:loanapp/screen/otp.dart';
import '../common/coomon_text_form_field.dart';
import '../common/rounded_button.dart';
import '../common/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _mobilenumbercontroller = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    final phoneKey = GlobalKey<FormState>();
    final phoneController = TextEditingController();
    final otpController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset("assets/OIP.jpg"),
                Utils.getSizedBox(height: 50),
                NumberTextField(
                  _mobilenumbercontroller,
                  'Mobile Number',
                  context,
                ),
                Utils.getSizedBox(height: 30),
                RoundedButton(
                  title: 'Login',
                  onpressed: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a Snackbar.

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyScreen(
                                    phoneNumber: '',
                                  )));
                     
                    }
               
                  },
                ),
              
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
