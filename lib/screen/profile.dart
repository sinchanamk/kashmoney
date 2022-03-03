import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import '../common/common_styles.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool viewDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // here the desired height
          child: AppBar(
            title: Text('My Profile'),
          )),
      body: body(),
    );
  }

  Widget uninitializedBody() {
    print(
        'profile response is22222----------------------------------------------------');

    return const Center(
        child: SizedBox(
      height: 25,
      width: 25,
      child: CircularProgressIndicator(
        strokeWidth: 1,
      ),
    ));
  }

  Widget body() {
    return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(children: [
          CircleAvatar(
            backgroundImage: NetworkImage(''),
            radius: 40,
          ),
          Card(
            elevation: 10,
            color: const Color.fromARGB(255, 7, 7, 7),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "SUBASH".toUpperCase(),
                style: CommonStyles.labelText15w500White(),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            child: Container(
              height: 40,
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text('First Name:'.toUpperCase(),
                    style: CommonStyles.labelText15w500Blue()),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Subash".toUpperCase(),
                  style: CommonStyles.labelText15w500Grey(),
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            child: Container(
              height: 40,
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text('Email:'.toUpperCase(),
                    style: CommonStyles.labelText15w500Blue()),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "subhash@gmail.com",
                  style: CommonStyles.labelText15w500Grey(),
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            child: Container(
              height: 40,
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text('Mobile:'.toUpperCase(),
                    style: CommonStyles.labelText15w500Blue()),
                const SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Text("8776544332", style: CommonStyles.labelText15w500Grey()),
                  ],
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ]));
  }
}
