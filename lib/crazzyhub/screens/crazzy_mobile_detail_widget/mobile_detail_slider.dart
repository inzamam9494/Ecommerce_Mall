import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../services/crazzy_services/crazzy_api_services.dart';
import '../home_widgets/crazzy_slides.dart';

class MobileDetailSlider extends StatefulWidget {
  final String productID;
  final String variantID;

  MobileDetailSlider({super.key, required this.productID, required this.variantID});

  @override
  State<MobileDetailSlider> createState() => _MobileDetailSliderState();

  CrazzyApiServices crazzyApiServices = CrazzyApiServices();
}

class _MobileDetailSliderState extends State<MobileDetailSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: FutureBuilder(
        future: widget.crazzyApiServices.fetchMobileDetailProductList(widget.productID, widget.variantID),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            var variantImages = snapshot.data?["variant_images"] ?? [];
            return CarouselSlider.builder(
              itemCount: variantImages.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(left: 5),
                  child: Image.network(variantImages[index]),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
              ),
            );
          }
        },
      ),
    );
  }
}
