import 'package:dorkar_mall/dokar_mall/pages/set_location_page.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}
TextEditingController searchController = TextEditingController();

bool isChecked = false;

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(left: 40,right: 40,top: 80, bottom: 40),
                  height: 150,
                  width: 150,
                  child: Image.asset("images/dokar_mall_image.png"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 12),
                child: const Row(
                  children: [
                    Text("Sign In",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                        prefixIcon: const Padding(padding:EdgeInsets.all(15),child: const Text("🇮🇳 +91")),
                        hintText: "| Enter phone number",
                        hintStyle: const TextStyle(
                            fontSize: 18,
                            color: Colors.grey
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey)
                        )
                    )
                ),
              ),
              Container(
                child:  Row(
                  children: [
                    Checkbox(
                        value: isChecked,
                        onChanged: (bool? value){
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                    const Text("Remember me")
                  ],
                ),
              ),
              Container(
                child: const Row(
                  children: [
                    Text("* By login | Agree with all the ",
                    style: TextStyle(
                      color: Colors.grey
                    ),),
                    Text("Terms & Conditions",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                    ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: double.maxFinite,
                    child: CustomButton(color: Colors.red, onTap: (){}, text: "Sign In")),
              ),
              Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have account? ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14
                      ),),
                    Text("Create Dorker Account",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                    ),),
                  ],
                ),
              ),
              Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Continue as", style: TextStyle(fontWeight: FontWeight.bold),),
                      TextButton(child: const Text("Guest",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      )),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SetLocationPage()));
                      },),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
