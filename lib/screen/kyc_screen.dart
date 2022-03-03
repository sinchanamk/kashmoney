import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Common/color.dart';
import '../Common/utils.dart';
import '../common/common_styles.dart';
import '../widget/upload_image.dart';
import 'bank_detailss.dart';

class KYCAdharScreen extends StatefulWidget {
  const KYCAdharScreen({Key? key}) : super(key: key);

  @override
  _KYCAdharScreenState createState() => _KYCAdharScreenState();
}

class _KYCAdharScreenState extends State<KYCAdharScreen> {
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
                'KYC Documents',
                style: CommonStyles.normalTextPurple(),
              ),
            ),
          ],
        ),
        Utils.getSizedBox(height: 30),
        Text(
          'Upload Adhaar',
          style: CommonStyles.textField16w500primary(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 30),
          child: ImageUpload(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18, top: 8, bottom: 8),
          child: Text(
            'Make Sure things likes Names, Numbers, Addresses are clearly visible while taking photo.',
            style: CommonStyles.labelText16w500Black(),
          ),
        ),
        Utils.getSizedBox(height: 7),
        Container(
          height: 250,
          width: 280,
          color: ColorsConsts.black,
          child: Image.asset('assets/adhar.jpeg'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 200, top: 20),
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KYCPANScreen()));
            },
            child: Text('Next',style: CommonStyles.labelText15w500White(),),
            color: ColorsConsts.primary,
          ),
        ),
      ],
    ))));
  }
}


class KYCPANScreen extends StatefulWidget {
  const KYCPANScreen({Key? key}) : super(key: key);

  @override
  _KYCPANScreenState createState() => _KYCPANScreenState();
}

class _KYCPANScreenState extends State<KYCPANScreen> {
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
                'KYC Documents',
                style: CommonStyles.normalTextPurple(),
              ),
            ),
          ],
        ),
        Utils.getSizedBox(height: 30),
        Text(
          'Upload PAN',
          style: CommonStyles.textField16w500primary(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 30),
          child: ImageUpload(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18, top: 8, bottom: 8),
          child: Text(
            'Make Sure things likes Names, Numbers, Addresses are clearly visible while taking photo.',
            style: CommonStyles.labelText16w500Black(),
          ),
        ),
        Utils.getSizedBox(height: 7),
        Container(
          height: 250,
          width: 280,
          color: ColorsConsts.black,
          child: Image.asset('assets/pan.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 200, top: 20),
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BankFillDetails()));
            },
            child: Text('Next',style: CommonStyles.labelText15w500White(),),
            color: ColorsConsts.primary,
          ),
        ),
      ],
    ))));
  }
}
