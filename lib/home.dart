import 'package:flutter/material.dart';
import 'package:loanapp/common/color.dart';
import 'package:loanapp/screen/LoanScreen.dart';
import 'package:loanapp/screen/payment_screen.dart';
import 'package:loanapp/screen/profile.dart';
import 'common/common_styles.dart';

class HomeScreen extends StatefulWidget {
  late final String subCategoryId;
  HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;
  List<Widget> body = [
    const LoanScreen(),
    const PaymentScreen(),
    ProfileScreen(),
  ];

//  @override
//   void initState() {

//     fetchDeliveedOrders();
//     super.initState();
//   }
//   fetchDeliveedOrders() async{
//   await  context.read<DeliveredOrdersProvider>().fetchData;
//   }
  @override
  Widget build(BuildContext context) {
    // final deliveredOrderProvider = Provider.of<DeliveredOrdersProvider>(context);

    return SafeArea(
        child: Scaffold(
      body: body.elementAt(currentindex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          gradient: LinearGradient(
            begin: Alignment(-1, 1),
            end: Alignment(1, -1),
            colors: const <Color>[
              Color.fromARGB(255, 250, 121, 175),
              Color.fromARGB(255, 241, 150, 234)
            ],
          ),
        ),
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          currentIndex: currentindex,
          selectedItemColor: Colors.black,
          unselectedItemColor: ColorsConsts.primary,
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: CommonStyles.labelText16w500Black(),
          selectedLabelStyle: CommonStyles.labelText16w500Black(),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.access_time_outlined,
                  color: ColorsConsts.primary,
                ),
                label: "Loan",
                // style: TextStyle(color: Colors.black),

                activeIcon: Icon(
                  Icons.access_time_outlined,
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance_wallet,
                  color: ColorsConsts.primary,
                ),
                label: "Payment",
                // style: TextStyle(color: Colors.black),
                activeIcon: Icon(
                  Icons.account_balance_wallet,
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: ColorsConsts.primary,
                ),
                label: "Account",
//style: TextStyle(color: Colors.black),

                activeIcon: Icon(
                  Icons.account_circle,
                )),
          ],
        ),
      ),
    ));
  }
}
