import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:loanapp/common/color.dart';
import 'package:loanapp/common/common_styles.dart';
import 'package:loanapp/common/utils.dart';
import 'package:loanapp/screen/salaried_screen.dart';
import 'package:loanapp/screen/self_employee.dart';

class SelectEmploymentScreen extends StatefulWidget {
  const SelectEmploymentScreen({Key? key}) : super(key: key);

  @override
  _SelectEmploymentScreenState createState() => _SelectEmploymentScreenState();
}

class _SelectEmploymentScreenState extends State<SelectEmploymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Get Loan Offer',
          style: CommonStyles.appBarField16w600primary(),
        ),
      ),
      body: Column(
        children: [
          Utils.getSizedBox(height: 30),
          Text(
            'Please fill the following information correctly.\n we will use it to provide the best loan offer.',
            style: CommonStyles.normalTextBlue14(),
          ),
          Utils.getSizedBox(height: 30),
          Text(
            'Select Employment type',
            style: CommonStyles.normalTextPurple(),
          ),
          Utils.getSizedBox(height: 30),
          InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => SelfEmployeeScreen())),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Neumorphic(
                drawSurfaceAboveChild: true,
                  style: const NeumorphicStyle(
                    color:   Color.fromARGB(255, 250, 193, 173),
                  
                  ),
                  child: Container(
                height: 180,
                width: 500,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    // border: Border.all(
                    //   color: ColorsConsts.black,
                    // ),
                 //   color: ColorsConsts.primary1,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/businessman.png",
                        height: 50,
                      ),
                      Utils.getSizedBox(height: 10),
                      Text(
                        'Self Employee',
                        style: CommonStyles.normalTextPurple(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SalariedScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Neumorphic(
                drawSurfaceAboveChild: true,
                  style: const NeumorphicStyle(
                    color:   Color.fromARGB(255, 250, 193, 173),
                  
                  ),
                  child:Container(
                height: 180,
                width: 500,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/man.png',
                      height: 50,
                    ),
                    Utils.getSizedBox(height: 10),
                    Text(
                      'Salaried',
                      style: CommonStyles.normalTextPurple(),
                    ),
                  ],
                ),
              ),
            ),
          ),
)],
      ),
    );
  }
}
