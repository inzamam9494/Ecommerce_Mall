import 'package:dorkar_mall/dokar_mall/widgets/menu_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/menu_box_feature.dart';
import '../language_choose_page.dart';
import 'bottom_bar.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        Navigator.push(context, MaterialPageRoute(builder: (context) => BottomBar()));
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.red.shade100,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.red,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Icon(Icons.person_pin, color: Colors.white,
                    size: 60,
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Guest User",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white
                    ),),
                    Text("Login to view all the features",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white
                    ),)
                  ],
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.only(bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const MenuText(text: "General",),
                Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      MenuBoxFeature(text: "Profile", icon: Icons.person_outline_outlined,onTap: (){},),
                      MenuBoxFeature(text: "My Address", icon: Icons.map,onTap: (){},),
                      MenuBoxFeature(text: "Language", icon: Icons.g_translate, onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LanguageChoosePage()));
                      },),
                    ],
                  ),
                ),
                const MenuText(text: "Promotional Activity",),
                Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      MenuBoxFeature(text: "Coupon", icon: Icons.discount_outlined,onTap: (){},),
                    ],
                  ),
                ),
                const MenuText(text: "Earnings",),
                Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      MenuBoxFeature(text: "Refer & Earn", icon: Icons.people_alt_outlined,onTap: (){},),
                      MenuBoxFeature(text: "Open Store", icon: Icons.storefront,onTap: (){},),
                    ],
                  ),
                ),
                const MenuText(text: "Help & Support",),
                Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      MenuBoxFeature(text: "Live Chat ", icon: Icons.chat_outlined,onTap: (){},),
                      MenuBoxFeature(text: "Help & Support", icon: Icons.phone,onTap: (){},),
                      MenuBoxFeature(text: "About Us", icon: Icons.person_pin, onTap: (){},),
                      MenuBoxFeature(text: "Terms & Conditions", icon: Icons.newspaper_outlined, onTap: (){},),
                      MenuBoxFeature(text: "Privacy Policy", icon: Icons.policy, onTap: (){},),
                      MenuBoxFeature(text: "Refund Policy", icon: Icons.currency_exchange, onTap: (){},),
                      MenuBoxFeature(text: "Shipping Policy", icon: Icons.local_shipping_outlined, onTap: (){},),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red
                      ),
                      child: const Icon(Icons.power_settings_new,color: Colors.white,),
                    ),
                    const Text("Sign In",style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16
                    ),)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}