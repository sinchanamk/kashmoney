import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  _ConfirmationScreenState createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loan confirmation'),
      ),
      body: Column(
        children: [
          Image.asset('assets/email.png'),
          Text('Upload your bank statements to get a confirmed offer of up to'),
          Text('80,000'),
          NeumorphicButton(
            child: Text('Get Confirmed Loan'),
            style: NeumorphicStyle(color: Colors.amber),
          )
        ],
      ),
    );
  }
}
