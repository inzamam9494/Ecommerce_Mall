import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';
import '../fashion_pages/fashion_page_widget/fashion_popular_store_card.dart';
import '../home_widgets/fashion_card.dart';
import '../home_widgets/main_slides.dart';
import 'grocery_images/grocery_images.dart';
import 'grocery_page_widget/grocery_card_background.dart';
import 'grocery_page_widget/grocery_card_list_category.dart';
import 'grocery_page_widget/grocery_store_card.dart';
import 'grocery_page_widget/search_bar.dart';
import 'grocery_page_widget/top_app_bar.dart';

class GroceryPage extends StatefulWidget {
  const GroceryPage({super.key});

  @override
  State<GroceryPage> createState() => _GroceryPageState();
}

class _GroceryPageState extends State<GroceryPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      GroceryCardListCategory(image: GroceryImages.health, text: "Health & Nutritional",),
                      GroceryCardListCategory(image: GroceryImages.atta_Rice_Dal, text: "Atta,Rice & Dal",),
                      GroceryCardListCategory(image: GroceryImages.spices, text: "Spices,Salt & Sugar",),
                      GroceryCardListCategory(image: GroceryImages.oil, text: "Oil & Ghee",),
                      GroceryCardListCategory(image: GroceryImages.dryFruits, text: "Dry Fruits, Nuts & Seeds",),
                      GroceryCardListCategory(image: GroceryImages.chocolates, text: "Chocolates & Sweet",),
                      GroceryCardListCategory(image: GroceryImages.drinks, text: "Beverages",),
                      GroceryCardListCategory(image: GroceryImages.stationary, text: "Office & Stationary",),
                      GroceryCardListCategory(image: GroceryImages.laundry, text: "Laundry & Dishwash",),
                      GroceryCardListCategory(image: GroceryImages.skinCare, text: "Body & Skin Care",),
                      GroceryCardListCategory(image: GroceryImages.hairCare, text: "Hair Care",),
                      GroceryCardListCategory(image: GroceryImages.womenHygiene, text: "Women's Hygiene",),
                      GroceryCardListCategory(image: GroceryImages.oralCare, text: "Oral Care & Wellness",),
                      GroceryCardListCategory(image: GroceryImages.kitchen, text: "Home & Kitchen",),
                      GroceryCardListCategory(image: GroceryImages.houseHold, text: "Household & Cleaning",),
                      GroceryCardListCategory(image: GroceryImages.dairy, text: "Dairy, Bakery & Eggs",),
                    ],
                  ),
                ),

              //   Grocery Card
                const GroceryCardBackground(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("1 Stores", style: TextStyle(fontWeight: FontWeight.bold),),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.menu_open, color: Colors.red,))
                    ],
                  ),
                ),
                const GroceryStoreCard(),
                const GroceryCardBackground(),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
