import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../functions/exit_functions.dart';
import 'fashion_pages/fashion_page.dart';
import 'home_widgets/main_card.dart';
import 'home_widgets/main_slides.dart';
import 'home_widgets/stores_card.dart';

class MainHomePage extends StatelessWidget {
   MainHomePage({super.key});

  ExitFunctions exitFunctions = ExitFunctions();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackButtonPressed(context),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const ExpansionTile(
              title: Text(
                "W7P2+9H4, Beldanga, West Bengal 742133, india",
                style: TextStyle(fontSize: 12),
              )),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none,size: 25,))
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                MainSlides(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MainCard(image: "images/droker_fashion.jpg",text: "FASHION", onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const FashionPage()));
                    },),
                    MainCard(image: "images/droker_grocery.jpg",text: "GROCERY", onTap: () {  },),
                    MainCard(image: "images/droker_food.jpg",text: "FOOD", onTap: () {  },),
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MainCard(image: "images/droker_bazar.jpg",text: "BAZAR", onTap: () {  },),
                  MainCard(image: "images/dokan.jpg",text: "DOKAN", onTap: () {  },),
                  MainCard(image: "images/droker_health.jpg",text: "HEALTH", onTap: () {  },),
                ],
              ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Featured Stores",
                        style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),),
                      TextButton(onPressed: (){}, child: const Text("View All",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.red
                        ),))
                    ],
                  ),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      StoreCard(title: 'Testy Food Corner', subtitle: 'Fatepur', image: "images/food_corner.jpg",),
                      StoreCard(title: 'SHOE STORE', subtitle: 'KOLKATA', image: "images/Grocery.jpg",),
                      StoreCard(title: 'KOLKATA BIRYANI', subtitle: 'KOLKATA', image: "images/kolkata_biryani.jpg",),
                    ],
                  ),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}

Future<bool> _onBackButtonPressed(BuildContext context) async {
  bool? exitApp = await showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: const Text("Exit"),
          content: const Text("Do you want to close the app??"),
          actions: <Widget>[
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);
            }, child: const Text("No")),
            TextButton(onPressed: (){
              SystemNavigator.pop();
            }, child: const Text("Yes")),
          ],
        );
      });
  return exitApp?? false;
}
