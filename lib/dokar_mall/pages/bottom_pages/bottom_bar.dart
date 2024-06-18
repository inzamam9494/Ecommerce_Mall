import 'package:dorkar_mall/dokar_mall/pages/bottom_pages/order_page.dart';
import 'package:flutter/material.dart';

import '../cart_page.dart';
import '../home_pages/main_home_page.dart';
import 'favroite_page.dart';
import 'menu_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;

  final screen = [
    MainHomePage(),
    const FavoritePage(),
    const OrderPage(),
    const MenuPage()
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CartPage()));
          },
          backgroundColor: Colors.red,
          shape: const CircleBorder(),
          child: const Icon(Icons.shopping_cart, color: Colors.white),
        ),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              labelTextStyle: MaterialStateProperty.resolveWith<TextStyle?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return const TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold);
                  }
                  return const TextStyle(color: Colors.grey);
                },
              ),
              indicatorColor: Colors.transparent),
          child: NavigationBar(
            height: 65,
            backgroundColor: Colors.white,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            animationDuration: const Duration(seconds: 1),
            selectedIndex: index,
            onDestinationSelected: (index) => setState(() => this.index = index),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_filled),
                label: "Home",
                selectedIcon: Icon(
                  Icons.home_filled,
                  color: Colors.red,
                ),
              ),
              NavigationDestination(
                icon: Icon(Icons.favorite_rounded),
                label: "Favourite",
                selectedIcon: Icon(Icons.favorite_rounded, color: Colors.red),
              ),
              NavigationDestination(
                icon: Icon(Icons.shopping_bag),
                label: "Orders",
                selectedIcon: Icon(Icons.shopping_bag, color: Colors.red),
              ),
              NavigationDestination(
                icon: Icon(Icons.menu),
                label: "Menu",
                selectedIcon: Icon(Icons.menu, color: Colors.red),
              ),
            ],
          ),
        ),
        body: screen[index],
      ),
    );
  }
}
