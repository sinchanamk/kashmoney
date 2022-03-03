import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/common/color.dart';
import 'package:loanapp/common/coomon_text_form_field.dart';
import 'package:loanapp/common/utils.dart';
import 'package:loanapp/screen/eligibility_screen.dart';

import '../common/common_styles.dart';

class SalariedScreen extends StatefulWidget {
  const SalariedScreen({Key? key}) : super(key: key);

  @override
  _SalariedScreenState createState() => _SalariedScreenState();
}

class _SalariedScreenState extends State<SalariedScreen> {
  TextEditingController companyNamecontroller = TextEditingController();
  TextEditingController salarycontroller = TextEditingController();
  String _selected = 'cash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Utils.getSizedBox(height: 40),
          Text(
            'Salaried Get Loan Offers',
            style: CommonStyles.subheaderText20w600(),
          ),
          Utils.getSizedBox(height: 20),
          ownerNameTextField(
              companyNamecontroller, "Your Company Full name", context),
          NumberTextField(salarycontroller, "Enter Monthly Income", context),
          Column(
            children: [
              Text(
                'How do you get your salary?',
                style: CommonStyles.textField16w500primarypink(),
              ),
              ListTile(
                selectedColor: ColorsConsts.primary,
                leading: Radio<String>(
                  activeColor: ColorsConsts.primary,
                  value: 'cash',
                  groupValue: _selected,
                  onChanged: (value) {
                    setState(() {
                      _selected = value!;
                    });
                  },
                ),
                title: Text(
                  'Cash',
                  style: CommonStyles.labelText15w500Blue(),
                ),
              ),
              ListTile(
                selectedColor: ColorsConsts.primary,
                leading: Radio<String>(
                  value: 'cheque',
                  activeColor: ColorsConsts.primary,
                  groupValue: _selected,
                  onChanged: (value) {
                    setState(() {
                      _selected = value!;
                    });
                  },
                ),
                title: Text(
                  'Cheque',
                  style: CommonStyles.labelText15w500Blue(),
                ),
              ),
              ListTile(
                selectedColor: ColorsConsts.primary,
                leading: Radio<String>(
                  value: 'online',
                  activeColor: ColorsConsts.primary,
                  groupValue: _selected,
                  onChanged: (value) {
                    setState(() {
                      _selected = value!;
                    });
                  },
                ),
                title: Text(
                  'Online',
                  style: CommonStyles.labelText15w500Blue(),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.account_balance,
                      color: ColorsConsts.primary,
                    ),
                    hintText: "Please select your primary bank account",
                    hintStyle: CommonStyles.textField13w500primarypink(),
                    enabledBorder: UnderlineInputBorder(
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
            child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.comment_bank,
                      color: ColorsConsts.primary,
                    ),
                     hintStyle: CommonStyles.textField13w500primarypink(),
                    enabledBorder: UnderlineInputBorder(
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
            padding: const EdgeInsets.only(left: 200, top: 10),
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
      )),
    );
  }
}
