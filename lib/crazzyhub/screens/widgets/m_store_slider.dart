import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

Widget mStoreSlider({int ? length, String ? images}){
  return CarouselSlider.builder(
      itemCount: length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 5),
          child: images == null? const Center(child: Text("Coming Soon")): Image.network(images),
        );
      },
      options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3)
      )
  );
}