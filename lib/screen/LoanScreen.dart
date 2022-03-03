import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loanapp/common/color.dart';
import 'package:loanapp/common/common_styles.dart';
import 'package:loanapp/common/utils.dart';

import 'employment_type.dart';

class LoanScreen extends StatefulWidget {
  const LoanScreen({Key? key}) : super(key: key);

  @override
  _LoanScreenState createState() => _LoanScreenState();
}

class _LoanScreenState extends State<LoanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Utils.getSizedBox(height: 5),

      Card(color: ColorsConsts.primary2,
          elevation: 20,
          child: NeumorphicText(
            "KASH MONEY",
            style: NeumorphicStyle(
              intensity: 20,
              depth: 28, //customize depth here
              color: Color.fromARGB(255, 255, 135, 91), //customize color here
            ),
            textStyle: NeumorphicTextStyle(
              fontSize: 18, //customize size here
              // AND others usual text style properties (fontFamily, fontWeight, ...)
            ),
          )),
      Utils.getSizedBox(height: 10),
      Banner(
          message: "Kash money",
          location: BannerLocation.bottomStart,
          color: Color.fromARGB(255, 10, 10, 10),
          child: Container(
            color: Color.fromARGB(255, 247, 147, 111), //ColorsConsts.primary,
            height: 550,
            child: Column(
              children: <Widget>[
                Utils.getSizedBox(height: 10),
                Image.asset(
                  'assets/cash.jpg',
                  height: 150,
                  fit: BoxFit.cover,
                ), //Image.network
                Utils.getSizedBox(height: 10),
                Text(
                  'Your Cash is available within 5 minutes!',
                  style: CommonStyles.labelText15w500White(),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 10),
                      child: Text(
                        'Upto',
                        style: CommonStyles.labelText18w500White(),
                      ),
                    ),
                    const Icon(
                      FontAwesomeIcons.rupeeSign,
                      size: 16,
                      color: Colors.white,
                    ),
                    const Text(
                      '50,000',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold), //TextStyle
                    ),
                  ],
                ),
                Utils.getSizedBox(height: 10),
                Text(
                  'Revolving Credit line',
                  style: CommonStyles.normalTextBlue(),
                ),
                Utils.getSizedBox(height: 20),
                // RaisedButton(
                //     color: ColorsConsts.black,
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: ((context) =>
                //                   SelectEmploymentScreen())));
                //     },
                //     child: Text(
                //       'Get Money now',
                //       style: CommonStyles.errorTextStyleStyle(),
                //     )),
                // Utils.getSizedBox(height: 20),

                SizedBox(
                  height: 40,
                  child: NeumorphicButton(
                      onPressed: () {
                             Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  SelectEmploymentScreen())));
                    
                 
                      },
                      style: NeumorphicStyle(
                        depth: -18,
                        color: ColorsConsts.primary,
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(8)),
                        //border: NeumorphicBorder()
                      ),
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Get Money now',
                        style: CommonStyles.errorTextStyleStyle(),
                      )),
                ),
                  Utils.getSizedBox(height: 10),
                Image.asset('assets/logo.png',height: 80,), 
                Utils.getSizedBox(height: 20),
                Text(
                  'Your Payable amount !',
                  style: CommonStyles.labelText15w500Blue(),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Icon(
                      FontAwesomeIcons.rupeeSign,
                      size: 16,
                      color: Colors.black
                                          ), Utils.getSizedBox(height: 10),
                   Text(
                      '10,000',
                      style:CommonStyles.textHeader16w900(), //TextStyle
                    ),
                  ],
                ),    Utils.getSizedBox(height: 10),
              NeumorphicButton(
                      onPressed: () {
                             Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  SelectEmploymentScreen())));
                    
                 
                      },
                      style: NeumorphicStyle(
                        depth: -18,
                        color: ColorsConsts.primary,
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(8)),
                        //border: NeumorphicBorder()
                      ),
                      padding: const EdgeInsets.all(12.0),
                     
                    child: Text(
                      'Pay Now',
                      style: CommonStyles.errorTextStyleStyle(),
                    )),
              ],
            ),
          )),
      Utils.getSizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Card(
              color: Colors.black,
              child: Text(
                'About us',
                style: CommonStyles.labelText15w500White(),
              )),
          Card(
              color: Colors.black,
              child: Text(
                'Support',
                style: CommonStyles.labelText15w500White(),
              )),
          Card(
              color: Colors.black,
              child: Text(
                'FAQ',
                style: CommonStyles.labelText15w500White(),
              )),
        ],
      ),
      // Utils.getSizedBox(height: 40),
      // Text(
      //   'It just takes three simple steps !',
      //   style: CommonStyles.textHeader16w900(),
      // ),
      // Utils.getSizedBox(height: 20),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Column(
      //       children: [
      //         CircleAvatar(
      //             backgroundColor: ColorsConsts.primary,
      //             radius: 30,
      //             child: Icon(
      //               Icons.person,
      //               color: Colors.white,
      //               size: 30,
      //             )),
      //         Utils.getSizedBox(height: 6),
      //         Text(
      //           'Check Eligibility',
      //           style: CommonStyles.labelText16w500Black(),
      //         ),
      //       ],
      //     ),
      //     Column(
      //       children: [
      //         CircleAvatar(
      //             backgroundColor: ColorsConsts.primary,
      //             radius: 30,
      //             child: Icon(
      //               Icons.document_scanner,
      //               color: Colors.white,
      //               size: 30,
      //             )),
      //         Utils.getSizedBox(height: 6),
      //         Text(
      //           'Upload Kyc',
      //           style: CommonStyles.labelText16w500Black(),
      //         ),
      //       ],
      //     ),
      //     Column(
      //       children: [
      //         CircleAvatar(
      //             backgroundColor: ColorsConsts.primary,
      //             radius: 30,
      //             child: Icon(
      //               Icons.money,
      //               color: Colors.white,
      //               size: 30,
      //             )),
      //         Utils.getSizedBox(height: 6),
      //         Text(
      //           'Get your money',
      //           style: CommonStyles.labelText16w500Black(),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      // Utils.getSizedBox(height: 50),
    ])));
  }
}
