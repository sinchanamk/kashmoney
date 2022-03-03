import "package:flutter/material.dart";
import 'package:loanapp/common/color.dart';
import 'package:loanapp/common/common_styles.dart';

class DynamicallyCheckbox extends StatefulWidget {
  @override
  DynamicallyCheckboxState createState() =>  DynamicallyCheckboxState();
}

class DynamicallyCheckboxState extends State {
  Map<String, bool> List = {
    'Savings': false,
    'Current': false,
    'Other': false,
    'Overdraft': false,
   
  };

  var holder_1 = [];

  getItems() {
    List.forEach((key, value) {
      if (value == true) {
        holder_1.add(key);
      }
    });

    // Printing all selected items on Terminal screen.
    print(holder_1);
    // Here you will get all your selected Checkbox items.

    // Clear array after use.
    holder_1.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 240,
          child:ListView(
            children: List.keys.map((String key) {
              return  Column(
                children: [
                  
                  CheckboxListTile(
                    title:  Text(key,style: CommonStyles.genderTextStyle(),),
                    value: List[key],
                    activeColor: ColorsConsts.primary,
                    checkColor: Colors.white,
                    onChanged: (value) {
                      setState(() {
                        List[key] = value!;
                       
                      });
                    },
                  ),
                ],
              );
            }).toList(),
          ));
  }
}
