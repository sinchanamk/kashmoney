import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Common/color.dart';
class GenderSelector extends StatefulWidget {
  @override
  _GenderSelectorState createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  List<Gender> genders =  <Gender>[];

  @override
  void initState() {
    super.initState();
    genders.add(new Gender("Male", Icons.male, false));
    genders.add(new Gender("Female", Icons.female, false));
    genders.add(new Gender("Others", FontAwesomeIcons.transgender, false));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: genders.length,
          itemBuilder: (context, index) {
            return InkWell(
              splashColor: Colors.pinkAccent,
              onTap: () {
                setState(() {
                  genders.forEach((gender) => gender.isSelected = false);
                  genders[index].isSelected = true;
                });
              },
              child: CustomRadio(genders[index]),
            );
          }),
    );
  }
}
class Gender {
  String name;
  IconData icon;
  bool isSelected;

  Gender(this.name, this.icon, this.isSelected);
}class CustomRadio extends StatelessWidget {
  Gender _gender;

  CustomRadio(this._gender);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: _gender.isSelected ? Color(0xFF3B4257) : Colors.white,
        child: Container(
          height: 40,
          width: 80,
          alignment: Alignment.center,
          margin: new EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                _gender.icon,
                color: _gender.isSelected ? Colors.white : ColorsConsts.primary,
                size: 20,
              ),
              SizedBox(height: 10),
              Text(
                _gender.name,
                style: TextStyle(fontFamily: "Montserrat",fontSize: 10,
                    color: _gender.isSelected ? Colors.white : ColorsConsts.primary),
              )
            ],
          ),
        ));
  }
}