import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loanapp/common/color.dart';
import 'package:loanapp/common/common_styles.dart';
import 'package:loanapp/common/utils.dart';
import 'package:loanapp/screen/amount_slider.dart';
import 'package:loanapp/screen/kyc_screen.dart';
import '../widget/gender.dart';

class EligibiltyScreen extends StatefulWidget {
  const EligibiltyScreen({Key? key}) : super(key: key);

  @override
  _EligibiltyScreenState createState() => _EligibiltyScreenState();
}

class _EligibiltyScreenState extends State<EligibiltyScreen> {
  bool checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Utils.getSizedBox(height: 20),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: ColorsConsts.black,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 0.0),
                    child: Text(
                      'Basic Details',
                      style: CommonStyles.normalTextPurple(),
                    ),
                  ),
                ],
              ),
              Utils.getSizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(
                          FontAwesomeIcons.idCard,
                          color: ColorsConsts.primary,
                        ),
                        hintText: "PAN Card Number",
                        hintStyle: CommonStyles.textField13w500primarypink(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorsConsts.primary),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorsConsts.primary),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Card(
                              color: ColorsConsts.green,
                              child: Icon(
                                Icons.check,
                                size: 20,
                                color: ColorsConsts.white,
                              )),
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(
                          FontAwesomeIcons.idCard,
                          color: ColorsConsts.primary,
                        ),
                        hintText: "Adhar Card Number",
                        hintStyle: CommonStyles.textField13w500primarypink(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorsConsts.primary),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorsConsts.primary),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Card(
                              color: ColorsConsts.green,
                              child: Icon(
                                Icons.check,
                                size: 20,
                                color: ColorsConsts.white,
                              )),
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: ColorsConsts.primary,
                        ),
                        hintText: "Full Name",
                        hintStyle: CommonStyles.textField13w500primarypink(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorsConsts.primary),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorsConsts.primary),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Card(
                              color: ColorsConsts.green,
                              child: Icon(
                                Icons.check,
                                size: 20,
                                color: ColorsConsts.white,
                              )),
                        ))),
              ),
              GenderSelector(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.cake,
                          color: ColorsConsts.primary,
                        ),
                        hintText: "Birth Date",
                        hintStyle: CommonStyles.textField13w500primarypink(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorsConsts.primary),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorsConsts.primary),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Card(
                              color: ColorsConsts.primary,
                              child: Icon(
                                Icons.calendar_today_rounded,
                                size: 20,
                                color: ColorsConsts.white,
                              )),
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(
                          FontAwesomeIcons.rupeeSign,
                          size: 15,
                          color: ColorsConsts.primary,
                        ),
                        hintText: "Amount of loan",
                        hintStyle: CommonStyles.textField13w500primarypink(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorsConsts.primary),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorsConsts.primary),
                        ),
                        suffixIcon: Icon(
                          Icons.arrow_drop_down,
                          size: 30,
                          color: ColorsConsts.primary,
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200, top: 20),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SliderScreen())); //KYCAdharScreen()));
                  },
                  child: Text(
                    'Next',
                    style: CommonStyles.labelText15w500White(),
                  ),
                  color: ColorsConsts.primary,
                ),
              ),
              Utils.getSizedBox(height: 90),
              Row(
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      checkColor: const Color.fromARGB(255, 255, 253, 253),
                      activeColor: ColorsConsts.black,
                      value: this.checkBoxValue,
                      onChanged: (bool? value) {
                        setState(() {
                          this.checkBoxValue = value!;
                        });
                      }),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "I agree to the ",
                        style: CommonStyles.normalTextBrown()),
                    TextSpan(
                        text: "terms of service ",
                        style: CommonStyles.normalTextBrown()),
                    TextSpan(
                      text: "and privacy policy.",
                      style: CommonStyles.normalTextBrown(),
                    )
                  ]))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
