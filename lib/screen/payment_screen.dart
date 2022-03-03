import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loanapp/common/common_styles.dart';
import 'package:loanapp/common/utils.dart';
import 'package:loanapp/widget/donesuccessfully.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment transactions',
          style: CommonStyles.appBarField16w600primary(),
        ),
      ),
      body: Column(
        children: [
          Utils.getSizedBox(height: 20),
          Text(
            'Subhash,',
            style: CommonStyles.normalTextBlue(),
          ),
          Utils.getSizedBox(height: 20),
          Card(
            child: SizedBox(
                height: 40,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Loan Sactioned',
                          style: CommonStyles.genderTextStyle(),
                        ),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.rupeeSign,
                              size: 10,
                            ),
                            Text(
                              '15000',
                              style: CommonStyles.genderTextStyle(),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Date',
                          style: CommonStyles.genderTextStyle(),
                        ),
                        Text(
                          '20/09/2021',
                          style: CommonStyles.genderTextStyle(),
                        ),
                      ],
                    )
                  ],
                )),
          ),
          Card(
            child: SizedBox(
                height: 40,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Loan Rejected due to cibil score',
                          style: CommonStyles.genderTextStyle(),
                        ),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.rupeeSign,
                              size: 10,
                            ),
                            Text('5000'),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          Card(
            child: SizedBox(
                height: 40,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Loan Rejected',
                          style: CommonStyles.genderTextStyle(),
                        ),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.rupeeSign,
                              size: 10,
                            ),
                            Text('15000'),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          Card(
            child: SizedBox(
                height: 90,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Payable amount is',
                          style: CommonStyles.genderTextStyle(),
                        ),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.rupeeSign,
                              size: 10,
                            ),
                            Text('15000'),
                          ],
                        ),
                      ],
                    ),
                    FlatButton(
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DoneSuccessScreen()));
                        },
                        child: Text(
                          'pay now',
                          style: CommonStyles.labelText15w500White(),
                        ))
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
