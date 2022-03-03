import 'package:flutter/material.dart';
import 'package:loanapp/Common/color.dart';

import 'common_styles.dart';

// ignore: non_constant_identifier_names
Widget NumberTextField(
  TextEditingController textEditingController,
  String hintText,
  //IconButton iconButton,
  // String labelText,
  BuildContext context,
) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextFormField(
        keyboardType: TextInputType.phone,
        cursorColor: ColorsConsts.primary,
        controller: textEditingController,
        maxLength: 10,
        style: CommonStyles.textField16w500primarypink(),
        decoration: InputDecoration(
          hintText: hintText,
          // labelText: labelText,
          hintStyle: CommonStyles.textField16w500primarypink(),
          // labelStyle: CommonStyles.textField16w500primary(),
//prefixIcon: iconButton,
          filled: false,
          // fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
          enabledBorder: const UnderlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(
                color: ColorsConsts.primary,
               
              )),
          focusedBorder: const UnderlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(
                color: ColorsConsts.primary,
                width: 2,
              )),
        ),validator: (value) {
                        // if (value!.isEmpty || value.length != 10) {
                        //   return "Enter a valid Phone Number";
                        // }
                        // return null;
                      },),
  );
}

Widget ownerNameTextField(
  TextEditingController textEditingController,
  String hintText,
  BuildContext context,
) {
  return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        cursorColor: ColorsConsts.white,

        controller: textEditingController,
        style: CommonStyles.textField16w500primarypink(),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: CommonStyles.textField16w500primarypink(),
          filled: false,
          contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
          enabledBorder: const UnderlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(
                color: ColorsConsts.primary,
                width: 4,
              )),
          focusedBorder: const UnderlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(
                color: ColorsConsts.blue,
                width: 4,
              )),
        ),
        validator: (value) {
          var name = value.toString();
          if (name.isEmpty) {
            return "Owner Name";
          }
          return null;
        },
        // onTap: () async {}
      ));
}

class SelectMenuTextFormField extends StatelessWidget {
  final String hintText;
  final VoidCallback fun;
  final TextEditingController textEditingController;
  const SelectMenuTextFormField(
      {Key? key,
      required this.hintText,
      required this.textEditingController,
      required this.fun})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Padding(
        padding: const EdgeInsets.all(15),
        child: TextFormField(
            cursorColor: ColorsConsts.white,
            controller: textEditingController,
            style: CommonStyles.textField16w500primarypink(),
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: InkWell(
                onTap: fun,
                child: const Icon(
                  Icons.arrow_drop_down,
                  size: 26,
                  color: ColorsConsts.blue,
                ),
              ),
              hintStyle: CommonStyles.textField16w500primarypink(),
              filled: false,
              contentPadding:
                  const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
              enabledBorder: const UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                    color: ColorsConsts.blue,
                    width: 4,
                  )),
              focusedBorder: const UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                    color: ColorsConsts.blue,
                    width: 4,
                  )),
            ),
            validator: (value) {
              var name = value.toString();
              if (name.isEmpty) {
                return "Select Cities";
              }
              return null;
            }));
  }
}
