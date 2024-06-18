import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import 'bottom_pages/bottom_bar.dart';

class PickupLocationPage extends StatefulWidget {
  const PickupLocationPage({super.key});

  @override
  State<PickupLocationPage> createState() => _PickupLocationPageState();
}

class _PickupLocationPageState extends State<PickupLocationPage> {
  final locationTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30,left: 10,right: 10),
              child: TextField(
                  controller: locationTextController,
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.search),
                      prefixIcon: Icon(Icons.location_on_rounded,color: Colors.red,),
                      hintText: "W7P2+9H4, Beldanga, West Bengal 742133, india",
                      hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black
                      ),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey)
                      )
                  )
              ),
            ),
            const Icon(Icons.location_on, color: Colors.red,size: 50,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 60,
                      width: 60,
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                        child: const Icon(Icons.my_location,color: Colors.red,),),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                      width: double.maxFinite,
                      child: CustomButton(color: Colors.red, onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomBar()));
                      }, text: "Pick Location")),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
