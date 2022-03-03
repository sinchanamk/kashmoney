import 'package:flutter/material.dart';
import 'package:loanapp/common/color.dart';
import 'package:loanapp/common/common_styles.dart';
import 'package:loanapp/common/utils.dart';
class DoneSuccessScreen extends StatelessWidget {
  const DoneSuccessScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Utils.getSizedBox(height: 280),
            CircleAvatar(radius: 50,backgroundColor: Color.fromARGB(255, 221, 204, 204),
              child: CircleAvatar(backgroundColor: Color.fromARGB(255, 13, 196, 28),radius: 40,
              child: Icon(Icons.done,color: ColorsConsts.white,size: 40,),),
            ),  Utils.getSizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.only(left:28.0),
              child: Text('Money Transferred Successfully',style: CommonStyles.normalTextPurple(),),
            ),
          Padding(
            padding: const EdgeInsets.only(left:28,top: 15),
            child: Text("We have successfully transfered Rs.25,000 to your bank account. ",
            style: CommonStyles.normalTextBlue(),),
          )
          ],
        ),
        
      ),
    );
  }
}