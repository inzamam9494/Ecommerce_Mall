import 'package:flutter/material.dart';

import '../../services/crazzy_services/crazzy_api_services.dart';
import 'crazzy_brand_list.dart';
import 'crazzy_mobile_tablet_card.dart';
import 'crazzy_search_bar.dart';
import 'crazzy_slides.dart';

class CrazzyHomePage extends StatefulWidget {
  const CrazzyHomePage({super.key});

  @override
  State<CrazzyHomePage> createState() => _CrazzyHomePageState();
}

class _CrazzyHomePageState extends State<CrazzyHomePage> {

  @override
  void initState() {
    CrazzyApiServices().fetchSlides();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      shape: const CircleBorder(),
      backgroundColor: Colors.pinkAccent,
        child: const Icon(Icons.message, color: Colors.white,),),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.pinkAccent,
        title: const Text("CrazzyHub", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_rounded)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.person_pin)),
        ],
      ),
      body: Container(
        child:  SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
            //   Search Bar
              const CrazzySearchBar(),
            //   Slides
              const CrazzySlider(),

            //   Brand List
              const CrazzyBrandList(),
            //   Mobile and Tablet List
            //   Container(
            //     padding: const EdgeInsets.only(left: 5, right: 5),
            //     margin: const EdgeInsets.only(bottom: 10),
            //     height: 50,
            //     width: double.maxFinite,
            //     color: Colors.grey,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         const Text("Mobile & Tablets", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            //          TextButton(onPressed: (){},  child: const Text("See All", style: TextStyle(color: Colors.black),))
            //       ]
            //     ),
            //   ),
            //   MobileCard
              CrazyMobileTabletCard()
            ],
          ),
        ),
      ),
    );
  }
}
