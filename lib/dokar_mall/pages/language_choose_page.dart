import 'package:flutter/material.dart';

import '../services/product_services.dart';
import '../widgets/custom_button.dart';
import '../widgets/language_choose_card.dart';
import 'Intro_slider_page.dart';

class LanguageChoosePage extends StatefulWidget {
  const LanguageChoosePage({super.key});

  @override
  State<LanguageChoosePage> createState() => _LanguageChoosePageState();
}

class _LanguageChoosePageState extends State<LanguageChoosePage> {

  bool choose = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(left: 40,right: 40,top: 40),
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.height * 0.5,
                  child: Image.asset("images/dokar_mall_image.png"),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Select Language",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LanguageChooseCard(image: "images/english_choose.png", language: "English",color: choose == true?Colors.red:Colors.white,
                          onTap: (){
                          setState(() {
                            choose = !choose;
                          });
                          },),
                        LanguageChooseCard(image: "images/bengali_choose.png", language: "Bengali",color: choose == false? Colors.red:Colors.white,
                          onTap: (){
                          setState(() {
                            choose = !choose;
                          });
                          },),
                      ],
                    ),
                  ),
                  const Center(child: Text("* You can change language later from menu bar",
                    style: TextStyle(
                        color: Colors.grey
                    ),),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12),
                child: SizedBox(
                  width: double.maxFinite,
                    child: CustomButton(color: Colors.red, text: "Save",
                      onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => IntroSliderPage()));
                    },)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
