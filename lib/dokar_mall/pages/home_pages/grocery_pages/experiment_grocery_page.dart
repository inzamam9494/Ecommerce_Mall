import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';
import '../fashion_pages/fashion_page_widget/fashion_popular_store_card.dart';
import '../home_widgets/fashion_card.dart';
import '../home_widgets/main_slides.dart';
import 'grocery_page_widget/grocery_card_background.dart';
import 'grocery_page_widget/search_bar.dart';
import 'grocery_page_widget/top_app_bar.dart';

class ExperimentGroceryPage extends StatefulWidget {
  const ExperimentGroceryPage({super.key});

  @override
  State<ExperimentGroceryPage> createState() => _ExperimentGroceryPageState();
}

class _ExperimentGroceryPageState extends State<ExperimentGroceryPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: Container(margin: const EdgeInsets.only(top: 0,right: 25),child: const CustomSearchBar()),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.all(0),
            child: Column(
              children: [
                // AppBar
                const TopAppBar(),
                //   Search Bar
                const CustomSearchBar(),
                //   Slides
                MainSlides(),

                // Grocery Category
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FashionCard(image: "images/cosmetics.jpg", text: "Cosmetics",),
                      FashionCard(image: "images/jwellery.jpg", text: "Jwellery",),
                      FashionCard(image: "images/mens_clothes.jpg", text: "Men's Clothes",),
                      FashionCard(image: "images/women_clothes.jpg", text: "Women's Clothes",),
                      FashionCard(image: "images/personal_care.jpg", text: "Personal Care",),
                      FashionCard(image: "images/kids_clothes.jpg", text: "Kids Cloths",),
                      FashionCard(image: "images/shoes.jpg", text: "Shoes",),
                      FashionCard(image: "images/home_furnishing.jpg", text: "Home Furnishing",),
                    ],
                  ),
                ),

                //   Grocery Card
                const GroceryCardBackground(),
                const GroceryCardBackground(),
                const GroceryCardBackground(),
                const GroceryCardBackground(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
