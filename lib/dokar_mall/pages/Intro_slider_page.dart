import 'package:dorkar_mall/dokar_mall/pages/signIn_page.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroSliderPage extends StatelessWidget {
  const IntroSliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: const BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: const Text("Get Favorite Items",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25
            ),),
            body: "Select your location to see the wide range stores and order your desire",
            image: Image.asset("images/splash_1.png"),
          ),
          PageViewModel(
            titleWidget: const Text("Easy Payment",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25
            ),),
            body: "Order item with COD payment or pay by safer and faster payment gateway",
            image: Image.asset("images/splash_2.png"),
          ),
          PageViewModel(
            titleWidget: const Text("Fast Delivery",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25
                )),
            body: "Hundreds of delivery man are waiting for your order. So place your order and get the item delivered to your doorstep",
            image: Image.asset("images/splash_3.png"),
          )
        ],
        onDone: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInPage()));
        },
        onSkip: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInPage()));
        },
        showBackButton: false,
        showSkipButton: true,
        showNextButton: false,
        skip: Container(
      height: 40,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: const Center(
        child: Text("Skip",
          style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w700
          ),),
      ),
    ),
        done: Container(
          height: 40,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Center(
            child: Text("Get Started",
              style: TextStyle(
              color: Colors.white,
                fontWeight: FontWeight.w700
            ),),
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10),
          activeSize: const Size(20, 10),
          color: Colors.black,
          activeColor: Colors.red,
          spacing: const EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
          )
        ),
      ),
    );
  }
}
