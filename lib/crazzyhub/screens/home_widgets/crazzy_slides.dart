import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../services/crazzy_services/crazzy_api_services.dart';

class CrazzySlider extends StatefulWidget {
  const CrazzySlider({super.key});

  @override
  State<CrazzySlider> createState() => _CrazzySliderState();
}

CrazzyApiServices crazzyApiServices = CrazzyApiServices();

class _CrazzySliderState extends State<CrazzySlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: crazzyApiServices.fetchSlides(),
        builder: (context,snapshot){
          if(!snapshot.hasData){
            return const Center(child: CircularProgressIndicator(),);
          }else{
            return CarouselSlider.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index, realIndex) {
                  dynamic slidesImages = snapshot.data[index];
                  return Container(
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(left: 5),
                    child: slidesImages["image"].toString() == null? const Center(child: Text("Coming Soon")):
                    Text(slidesImages["image"].toString()),
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3)
                )
            );
          }
        },
      ),
    );
  }
}
