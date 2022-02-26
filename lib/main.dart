import 'package:flutter/material.dart';
import 'package:loanapp/screen/login.dart';
import 'package:loanapp/screen/otp.dart';
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
    return 
    MultiProvider(
      providers: [
        Provider<ImagePickerService>(create: (_) => ImagePickerService()),
      ],
       child:
        MaterialApp(
      title: 'Gurudayaan Logistics Partner',
      debugShowCheckedModeBanner: false,
     theme: ThemeData(fontFamily: 'Roboto',
      primaryColor:const Color.fromARGB(255, 117, 10, 2),
      appBarTheme:const AppBarTheme(            
         backgroundColor: ColorsConsts.primary,
      ),),
      home:  const LoginScreen(),
       routes: {
             
              'LoginScreen': (context) => const LoginScreen(),
               'VerifyScreen': (context) =>  const VerifyScreen(phoneNumber: '',),
               
              //  'VehicleNumberScreen': (context) => const VehicleNumberScreen(),
              //  'RegisterScreen':(context)=> const RegisterScreen(),
              // 'BottomSheetScreen':(context)=>const  BottomSheetScreen(),
              // 'BottomVehicleSheetScreen':(context)=>const BottomVehicleSheetScreen(),
              // 'UploadDocumentsScreen':(context)=>const UploadDocumentsScreen(),
              // 'UploadingDocuments': (context)=>const UploadingDocuments(),
            },
    ));
  }
}

