import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/screen/permission_screen.dart';
import 'package:loanapp/services/image_picker_service.dart';
import 'package:provider/provider.dart';

import 'Common/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<ImagePickerService>(create: (_) => ImagePickerService()),
        ],
        child: MaterialApp(
          title: 'Kash Money',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Roboto',
            primaryColor: const Color.fromARGB(255, 117, 10, 2),
            appBarTheme: const AppBarTheme(
              backgroundColor: ColorsConsts.primary,
            ),
          ),
          home: EasySplashScreen(
            logo: Image.asset(
              "assets/logo.png",
            ),
            logoSize: 150,
            title: const Text(
              "Get money on your fingertips",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            showLoader: true,
            loadingText: const Text(
              "Kash Money",
              style: TextStyle(color: Color.fromARGB(255, 255, 196, 162), fontSize: 18),
            ),
            navigator: const PermissionsScreen(),
            durationInSeconds: 8,
          ),
        ));
  }
}
