import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Slides extends StatefulWidget {


  const Slides(
      {super.key,});

  @override
  State<Slides> createState() => _SlidesState();
}

class _SlidesState extends State<Slides> {
  int activeIndex = 0;

  final List sales = [
    "images/beauty_sale.jpg",
    "images/cyber.jpg",
    "images/final_sale.jpg",
    "images/special_sale.jpg",
    "images/woman_sale.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                autoPlay: true,
                height: 150,
                onPageChanged: ((index, reason) {
                  setState(() => activeIndex = index);
                })),
            items: sales.map((i) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: Image.asset(
                    i,
                    fit: BoxFit.fill,
                  ),
                );
              });
            }).toList(),
          ),
          const SizedBox(
            height: 20,
          ),
          AnimatedSmoothIndicator(
            effect: const ExpandingDotsEffect(
                dotWidth: 8, dotHeight: 8, activeDotColor: Color(0xff009587)),
            activeIndex: activeIndex,
            count: 5,
          )
        ],
      ),
    );
  }
}
