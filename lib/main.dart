import 'dart:io';

import 'package:dorkar_mall/crazzyhub/screens/home_widgets/crazzy_home_page.dart';
import 'package:dorkar_mall/crazzyhub/screens/m_store_screens/m_store_login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'controllers/const_toast.dart';
import 'crazzyhub/screens/m_store_screens/m_store_detail_page.dart';
import 'crazzyhub/screens/m_store_screens/m_store_home_page.dart';
import 'crazzyhub/screens/m_store_screens/m_store_payment_screen.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final ConstToast constToast = Get.put(ConstToast(),permanent: true);


  @override
  Widget build(BuildContext context) {

    var screen = (!Platform.isAndroid)?Size(1920, 1080):Size(360, 690);
    return ScreenUtilInit(
      // designSize: Size(1080, 720),
      designSize: screen,
      minTextAdapt: false,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        darkTheme: ThemeData.light(),
        // home: CrazzyHomePage(),
        // home: MStoreHomePage(),
        home: MStoreLoginScreen(),
        // home: InstallerCheckScreen(),
        // home: MStoreDetailPage(),
        //
      ),
    );
  }
}


class InstallerCheckScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: InstallerChecker.isInstallerApproved(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasError || !snapshot.data!) {
          return Scaffold(
            body: Center(
              child: Text(
                'App should be installed from Play Store or another whitelisted app store.',
                style: TextStyle(fontSize: 16, color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
          );
        } else {
          return MStorePaymentScreen();
        }
      },
    );
  }
}

class InstallerChecker {
  static final List<String> approvedInstallers = [
    'com.android.vending', // Google Play Store
    'com.amazon.venezia',  // Amazon Appstore
    // Add other approved installer package names here
  ];

  static Future<bool> isInstallerApproved() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String? installerPackage = packageInfo.installerStore;
    return approvedInstallers.contains(installerPackage);
  }
}
