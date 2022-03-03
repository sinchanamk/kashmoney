import 'package:flutter/material.dart';
import 'package:loanapp/common/color.dart';
import 'package:loanapp/common/common_styles.dart';
import 'package:loanapp/common/utils.dart';
import 'package:loanapp/screen/login.dart';

import '../common/rounded_button.dart';

class PermissionsScreen extends StatefulWidget {
  const PermissionsScreen({Key? key}) : super(key: key);

  @override
  _PermissionsScreenState createState() => _PermissionsScreenState();
}

class _PermissionsScreenState extends State<PermissionsScreen> {
  bool checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Utils.getSizedBox(height: 50),
            Container(
              height: 60,
              width: 350,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Card(color: ColorsConsts.primary2,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    'We need few permissions !',
                    style: CommonStyles.normalTextPurple(),
                  ),
                ),
              ),
            ),
            Utils.getSizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.location_on,
                  size: 30,
                  color: ColorsConsts.blue,
                ),
                Column(
                  children: [
                    Text(
                      'Location'.toUpperCase(),
                      style: CommonStyles.textField16w500green(),
                    ),
                    Text(
                      'To verify address details',
                      style: CommonStyles.textField16w500black(),
                    )
                  ],
                )
              ],
            ),
            Utils.getSizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.message,
                  size: 28,
                  color: ColorsConsts.blue,
                ),
                Column(
                  children: [
                    Text(
                      'SMS',
                      style: CommonStyles.textField16w500green(),
                    ),
                    Text(
                      'To check your eligibility \n & loan amount',
                      style: CommonStyles.textField16w500black(),
                    )
                  ],
                )
              ],
            ),
            Utils.getSizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.camera,
                  size: 28,
                  color: ColorsConsts.blue,
                ),
                Column(
                  children: [
                    Text(
                      'Media & Photos',
                      style: CommonStyles.textField16w500green(),
                    ),
                    Text(
                      'To upload images and\n click images',
                      style: CommonStyles.textField16w500black(),
                    )
                  ],
                )
              ],
            ),
            Utils.getSizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.phone_android,
                  size: 28,
                  color: ColorsConsts.blue,
                ),
                Column(
                  children: [
                    Text(
                      'Device information ',
                      style: CommonStyles.textField16w500green(),
                    ),
                    Text(
                      'To Securely link \n application to phone',
                      style: CommonStyles.textField16w500black(),
                    )
                  ],
                )
              ],
            ),Utils.getSizedBox(height: 10),
            Image.asset("assets/logo.png",height: 80,),
            Utils.getSizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      checkColor: const Color.fromARGB(255, 255, 253, 253),
                      activeColor: ColorsConsts.primary,
                      value: this.checkBoxValue,
                      onChanged: (bool? value) {
                        setState(() {
                          this.checkBoxValue = value!;
                        });
                      }),
                  Text(
                    'I authorize Kash Money to access and\n collect the above mentioned data.',
                    style: CommonStyles.normalTextBlue14(),
                  )
                ],
              ),
            ),
            Utils.getSizedBox(height: 20),
            RoundedButton(
              title: 'Agree',
              onpressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
                //async {
                //verifyOTP(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
