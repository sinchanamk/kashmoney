import 'package:flutter/material.dart';
import 'package:loanapp/widget/checkbox.dart';
import '../Common/utils.dart';
import '../common/color.dart';
import '../common/common_styles.dart';
import '../widget/donesuccessfully.dart';

class BankFillDetails extends StatefulWidget {
  const BankFillDetails({Key? key}) : super(key: key);

  @override
  _BankFillDetailsState createState() => _BankFillDetailsState();
}

class _BankFillDetailsState extends State<BankFillDetails> {
  List<String> _checked = [];
  bool _value = false;
  bool _valu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
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
                'Bank Details',
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
              Icons.account_balance,
              color: ColorsConsts.primary,
            ),
            hintText: "IFSC Code",
            hintStyle: CommonStyles.textField13w500primarypink(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: ColorsConsts.primary),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: ColorsConsts.primary),
            ),
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.auto_fix_normal_outlined,
                    color: ColorsConsts.primary,
                  ),
                  hintText: "Bank Account Number",
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
                    Icons.auto_fix_normal_outlined,
                    color: ColorsConsts.primary,
                  ),
                  hintText: "Confirm Account Number",
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
                  hintText: "Holder Name",
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
                    Icons.account_balance_rounded,
                    color: ColorsConsts.primary,
                  ),
                  hintText: "Bank Name",
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
        Utils.getSizedBox(height: 120),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
              leading: Image.asset(
                'assets/download.png',
                fit: BoxFit.cover,
              ),
              title: Text(
                'Axis Bank',
                style: CommonStyles.labelText15w500White(),
              ),
              subtitle: Text('Koramangala',style: CommonStyles.labelText15w500White(),),
              tileColor: Color.fromARGB(255, 241, 22, 14),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => DoneSuccessScreen())));
              }),
        ),
      ]),
    ));
  }
}
