import 'package:flutter/material.dart';
import 'package:loanapp/common/common_styles.dart';

class EligibityCriteriaNotMet extends StatelessWidget {
  const EligibityCriteriaNotMet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.remove),
      ),
      body: Column(
        children: [
          Image.asset('assets/application.png'),
          Text(
            'Eligibility Criteria Not Met',
            style: CommonStyles.normalTextBlue(),
          ),
          Text(
              'Sorry, we cannot process your loan as you did\n not met the eligibility criteria',
              style: CommonStyles.labelText16w500Black()),
        ],
      ),
    );
  }
}
