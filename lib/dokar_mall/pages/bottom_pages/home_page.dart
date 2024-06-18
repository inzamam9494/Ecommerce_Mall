import 'package:dorkar_mall/dokar_mall/widgets/categories_list.dart';
import 'package:flutter/material.dart';

import '../../widgets/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.location_on),
        title: const ExpansionTile(
            title: Text(
          "W7P2+9H4, Beldanga, West Bengal 742133, india",
          style: TextStyle(fontSize: 12),
        )),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search your desired items or store",
                  hintStyle: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey)
                  )
                )
              ),
            ),
             Slides(),
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.w700
                  ),),
                  TextButton(onPressed: (){}, child: const Text("View All",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.teal
                  ),))
                ],
              ),
            ),
            Container(
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoriesList(),
                    CategoriesList(),
                    CategoriesList(),
                    CategoriesList(),
                    CategoriesList(),
                    CategoriesList(),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Best Reviewed item",
                    style: TextStyle(
                        fontWeight: FontWeight.w700
                    ),),
                  TextButton(onPressed: (){}, child: const Text("View All",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.teal
                    ),))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
