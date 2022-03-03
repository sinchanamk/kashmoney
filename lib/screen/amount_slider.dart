import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:loanapp/common/common_styles.dart';
import 'package:loanapp/common/utils.dart';
import 'package:loanapp/screen/kyc_screen.dart';

import '../common/color.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _currentSliderValue = 20;
  double _lowerValue = 50;
  double _upperValue = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Utils.getSizedBox(height: 100),
          Text(
            'Slide your amount',
            style: CommonStyles.appBarField16w600primary(),
          ),
          Container(
              margin: EdgeInsets.only(top: 50, left: 20, right: 20),
              alignment: Alignment.centerLeft,
              child: FlutterSlider(
                values: [10000, 15000],
                rangeSlider: true,
//rtl: true,
                ignoreSteps: [
                  FlutterSliderIgnoreSteps(from: 8000, to: 10000),
                  FlutterSliderIgnoreSteps(from: 000, to: 10000),
                ],
                max: 10000000,
                min: 1000,
                step: FlutterSliderStep(step: 100),

                jump: true,

                trackBar: FlutterSliderTrackBar(
                    activeTrackBarDraggable: true,
                    activeTrackBarHeight: 5,
                    activeDisabledTrackBarColor: Colors.amber),
                tooltip: FlutterSliderTooltip(
                  textStyle: TextStyle(fontSize: 17, color: Colors.lightBlue),
                ),
                handler: FlutterSliderHandler(
                  decoration: BoxDecoration(),
                  child: Material(
                    type: MaterialType.canvas,
                    color: Colors.orange,
                    elevation: 10,
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.adjust,
                          size: 25,
                        )),
                  ),
                ),
                rightHandler: FlutterSliderHandler(
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.red,
                    size: 24,
                  ),
                ),
                disabled: false,

                onDragging: (handlerIndex, lowerValue, upperValue) {
                  _lowerValue = lowerValue;
                  _upperValue = upperValue;
                  setState(() {});
                },
              )),
          //  Text('Lower Amount: ' + _lowerValue.toString(),style: CommonStyles.genderTextStyle(),),
          SizedBox(height: 25),
          Text(
            'Higher Amount: ' + _upperValue.toString(),
            style: CommonStyles.genderTextStyle(),
          ),
          Utils.getSizedBox(height: 220),
          Text(
            'Yours Entered amount is  ' + _upperValue.toString(),
            style: CommonStyles.labelText15w500Blue(),
          ),
          Utils.getSizedBox(height: 90),
          Padding(
            padding: const EdgeInsets.only(left: 200, top: 20),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KYCAdharScreen()));
              },
              child: Text(
                'Next',
                style: CommonStyles.labelText15w500White(),
              ),
              color: ColorsConsts.grey,
            ),
          ),
        ],
      ),
    );
  }
}
