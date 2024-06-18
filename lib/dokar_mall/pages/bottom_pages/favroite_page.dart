import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';
import '../home_pages/main_home_page.dart';
import 'bottom_bar.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: () async{
        Navigator.push(context, MaterialPageRoute(builder: (context) => BottomBar()));
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text("Favourite"),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset("images/login_page.png"),
                ),
                const Text("You are not logged in",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                ),),
                const Text("Please login to continue",
                style: TextStyle(
                  color: Colors.grey
                ),),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(width: 200,child: CustomButton(color: Colors.red, onTap: (){}, text: "Login"),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
