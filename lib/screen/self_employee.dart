import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loanapp/common/color.dart';
import 'package:loanapp/common/coomon_text_form_field.dart';
import 'package:loanapp/common/utils.dart';

import '../common/common_styles.dart';
import 'eligibility_screen.dart';

class SelfEmployeeScreen extends StatefulWidget {
  const SelfEmployeeScreen({Key? key}) : super(key: key);

  @override
  _SelfEmployeeScreenState createState() => _SelfEmployeeScreenState();
}

class _SelfEmployeeScreenState extends State<SelfEmployeeScreen> {
  TextEditingController companyNamecontroller = TextEditingController();
  TextEditingController salarycontroller = TextEditingController();
  String _selected = 'yes';
  String _selected1 = 'yes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Utils.getSizedBox(height: 50),
            Text(
              'Self Employee Get Loan Offer',
              style: CommonStyles.appBarField16w600primary(),
            ),
            Utils.getSizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                  decoration: InputDecoration(
                icon: Icon(
                  Icons.monetization_on,
                  color: ColorsConsts.primary,
                ),
                hintText: "Enter Monthly Income",
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
                        FontAwesomeIcons.calendar,
                        color: ColorsConsts.primary,
                      ),
                      hintText: "Enter Annual turn over",
                      hintStyle: CommonStyles.textField13w500primarypink(),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ColorsConsts.primary),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ColorsConsts.primary),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 20,
                          color: ColorsConsts.white,
                        ),
                      ))),
            ),
            Text(
              'Did you file your last 2 yrs income tax returns?',
              style: CommonStyles.genderTextStyle(),
            ),
            ListTile(
              selectedColor: ColorsConsts.primary,
              leading: Radio<String>(
                activeColor: ColorsConsts.primary,
                value: 'Yes',
                groupValue: _selected,
                onChanged: (value) {
                  setState(() {
                    _selected = value!;
                  });
                },
              ),
              title: Text(
                'Yes',
                style: CommonStyles.labelText15w500Blue(),
              ),
            ),
            ListTile(
              selectedColor: ColorsConsts.primary,
              leading: Radio<String>(
                value: 'No',
                activeColor: ColorsConsts.primary,
                groupValue: _selected,
                onChanged: (value) {
                  setState(() {
                    _selected = value!;
                  });
                },
              ),
              title: Text(
                'No',
                style: CommonStyles.labelText15w500Blue(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                  decoration: InputDecoration(
                      icon: const Icon(
                        Icons.account_balance,
                        color: ColorsConsts.primary,
                      ),
                      hintText: "Please select your primary bank account",
                      hintStyle: CommonStyles.textField13w500primarypink(),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            showSelectedItems: true,
                            items: const [
                              "SBI",
                              "HDFC Bank",
                              "Punjab Bank",
                              'AXIS bank',
                              'Allahabad Bank'
                            ],
                            label: "Pickup your bank",
                            hint: "country in menu mode",
                            popupItemDisabled: (String s) => s.startsWith('I'),
                            onChanged: print,
                            selectedItem: "SBI"),
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Do you have any credit card/previous Loan/active Loan?",
                style: CommonStyles.textField16w500primarypink(),
              ),
            ),
            ListTile(
              selectedColor: ColorsConsts.primary,
              leading: Radio<String>(
                activeColor: ColorsConsts.primary,
                value: 'Yes',
                groupValue: _selected1,
                onChanged: (value) {
                  setState(() {
                    _selected1 = value!;
                  });
                },
              ),
              title: Text(
                'Yes',
                style: CommonStyles.labelText15w500Blue(),
              ),
            ),
            ListTile(
              selectedColor: ColorsConsts.primary,
              leading: Radio<String>(
                value: 'No',
                activeColor: ColorsConsts.primary,
                groupValue: _selected1,
                onChanged: (value) {
                  setState(() {
                    _selected1 = value!;
                  });
                },
              ),
              title: Text(
                'No',
                style: CommonStyles.labelText15w500Blue(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                  decoration: InputDecoration(
                      icon: const Icon(
                        Icons.comment_bank,
                        color: ColorsConsts.primary,
                      ),  enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            showSelectedItems: true,
                            items: const [
                              "Education loan",
                              "Personal loan",
                              "Home loan",
                              'Auto loan',
                              'Veterans loan'
                            ],
                            label: "Purpose of loan",
                            hint: "Purpose of loan",
                            popupItemDisabled: (String s) => s.startsWith('I'),
                            onChanged: print,
                            selectedItem: "Personal loan"),
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EligibiltyScreen()));
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
      ),
    );
  }
}
