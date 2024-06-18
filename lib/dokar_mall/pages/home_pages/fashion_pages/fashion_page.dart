import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../../../services/product_services.dart';
import '../home_widgets/fashion_card.dart';
import '../home_widgets/fashion_card_box.dart';
import '../home_widgets/main_slides.dart';
import 'fashion_add_card_detail_page.dart';
import 'fashion_add_card_variant_detail_page.dart';
import 'fashion_page_widget/fashion_popular_store_card.dart';
import 'fashion_page_widget/fashion_visit_card.dart';
import 'fashion_store_details.dart';

class FashionPage extends StatefulWidget {
  const FashionPage({super.key});

  @override
  State<FashionPage> createState() => _FashionPageState();
}

class _FashionPageState extends State<FashionPage> {
  TextEditingController searchController = TextEditingController();
  ProductService productService = ProductService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.window),
        title: const ExpansionTile(
            title: Text(
              "W7P2+9H4, Beldanga, West Bengal 742133, india",
              style: TextStyle(fontSize: 12),
            )),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none,size: 25,))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.only(bottom: 50),
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
              MainSlides(),
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
              // for Related Products
              Container(
                margin: const EdgeInsets.only(bottom: 50),
                color: Colors.red.shade100,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: 320,
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Most Popular Products 🔥",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700
                              ),),
                            TextButton(onPressed: (){}, child: const Text("See All",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.red
                              ),))
                          ],
                        ),
                      ),
                      FutureBuilder(future: productService.fetchProducts(),
                          builder: (context, snapshot){
                        if(!snapshot.hasData){
                          return const Center(child: CircularProgressIndicator(),);
                        }else{
                          var products = snapshot.data;
                          var uuid = const Uuid();
                          return Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                                itemCount: products.length,
                                itemBuilder: (context, index){
                                var product = products[index];
                                print('product data   ${snapshot.data}');
                                return Container(
                                  child: FashionCardBox(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => FashionAddCartDetailPage(
                                          id: uuid.v4(),
                                          image: product['variant_image'].toString(),
                                          title: product['product_variant_name'].toString(),
                                          price: product['price'].toString(),
                                          stockStatus: product['stock_sataus'].toString(),
                                          colorText: product['color_variant_name'].toString(),
                                          ram: product['other_variant_name'].toString(),
                                          storage: product['storage_variant_name'].toString(),
                                          slug: product['slug'].toString(),
                                        )));
                                  },
                                    textProduct: product['product_variant_name'].toString(),
                                    productImage: product['variant_image'].toString(),
                                    productPrice: product['price'].toString(),));
                                }),
                          );
                        }
                          }),
                    ],
                  ),
                ),
              ),
              // Only Product Data
              Container(
                margin: const EdgeInsets.only(bottom: 50),
                color: Colors.red.shade100,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: 350,
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Most Popular Phones 🔥",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700
                              ),),
                            TextButton(onPressed: (){}, child: const Text("See All",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.red
                              ),))
                          ],
                        ),
                      ),
                      FutureBuilder(future: productService.fetchProductsDetails(),
                          builder: (context, snapshot){
                        if(!snapshot.hasData){
                          return const Center(child: CircularProgressIndicator(),);
                        }else{
                          var products = snapshot.data;
                          var uuid = const Uuid();
                          return Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                                itemCount: products.length,
                                itemBuilder: (context, index){
                                var product = products;
                                print('product data   ${snapshot.data}');
                                return Container(
                                  child: FashionCardBox(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => VariantDetailPage(
                                          id: uuid.v4(),
                                          image1: product['variant_color_values'][0]['variant_image'].toString(),
                                          image2: product['variant_color_values'][1]['variant_image'].toString(),

                                          title: product['product_variant_name'].toString(),
                                          price: product['price'].toString(),
                                          stockStatus: product['stock_sataus'].toString(),

                                          colorText1: product['variant_color_values'][0]['value'].toString(),
                                          colorText2: product['variant_color_values'][1]['value'].toString(),

                                          ram1: product['other_variant_values'][0]['value'].toString(),
                                          ram2: product['other_variant_values'][1]['value'].toString(),

                                          storage1: product['variant_storage_values'][0]['value'].toString(),
                                          storage2: product['variant_storage_values'][1]['value'].toString(),

                                          slug: product['slug'].toString(),
                                        )));
                                  },
                                    textProduct: product['product_variant_name'].toString(),
                                    productImage: product['variant_image'].toString(),
                                    productPrice: product['price'].toString(),));
                                }),
                          );
                        }
                          }),

                    ],
                  ),
                ),
              ),
            //   Popular Section
              Container(
                margin: const EdgeInsets.only(bottom: 50),
                color: Colors.grey.shade200,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Popular Store 🔥",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700
                              ),),
                            TextButton(onPressed: (){}, child: const Text("See All",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.red
                              ),))
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          child: const Row(
                            children: [
                              // StoreCard(title: "Rajantika Jewellers", subtitle: "Kolkata", image: "images/kurti_1.jpg"),
                              // StoreCard(title: "Jewellery Collection", subtitle: "Kolkata", image: "images/kurti_1.jpg"),
                              // StoreCard(title: "Munnmun Botique", subtitle: "Kolkata", image: "images/kurti_1.jpg"),
                              // StoreCard(title: "SHOE STORE", subtitle: "Kolkata", image: "images/kurti_1.jpg"),
                              // FashionStoreCard(onTap: (){})
                              FashionPopularStoreCard(),
                              FashionPopularStoreCard(),
                              FashionPopularStoreCard(),
                              FashionPopularStoreCard(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: ClipRRect(borderRadius: BorderRadius.circular(20), child: Image.network("https://watermark.lovepik.com/photo/40008/0007.jpg_wh1200.jpg")),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("4 Stores", style: TextStyle(fontWeight: FontWeight.bold),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.menu_open, color: Colors.red,))
                  ],
                ),
              ),
              FashionVisitCard(onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const FashionStoreDetails()));},),
              FashionVisitCard(onTap: () {  },),
              
            ],
          ),
        ),
      ),
    );
  }
}
