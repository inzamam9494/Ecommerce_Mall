import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';
import 'bottom_bar.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  TextEditingController orderIdController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        Navigator.push(context, MaterialPageRoute(builder: (context) => BottomBar()));
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text("My Orders"),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: TextField(
                      controller: orderIdController,
                      decoration: InputDecoration(
                          hintText: "Order ID",
                          hintStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.grey
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.red)
                          )
                      )
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: TextField(
                      controller: numberController,
                      decoration: InputDecoration(
                          prefixIcon: const Padding(padding:EdgeInsets.all(15),child: Text("🇮🇳 +91")),
                          hintText: "| Enter phone number",
                          hintStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.grey
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.red)
                          )
                      )
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      height: 50,
                      width: double.maxFinite,child: CustomButton(color: Colors.red, onTap: (){}, text: "Track Order"),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
