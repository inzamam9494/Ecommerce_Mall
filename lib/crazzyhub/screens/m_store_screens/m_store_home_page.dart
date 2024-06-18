
import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dorkar_mall/crazzyhub/screens/m_store_screens/controllers/product_details_controller.dart';
import 'package:dorkar_mall/crazzyhub/services/models/m_store_slider_model.dart';
import 'package:dorkar_mall/crazzyhub/style/color.dart';
import 'package:dorkar_mall/crazzyhub/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../const/const_height.dart';
import '../../services/m_store_services/m_store_services.dart';
import '../../services/models/m_store_new_product_detail_model.dart';
import '../widgets/m_store_card.dart';
import '../widgets/m_store_slider.dart';
import 'm_store_add_to_card_page.dart';
import 'm_store_detail_page.dart';
import 'm_store_login_screen.dart';

class MStoreHomePage extends StatefulWidget {
  const MStoreHomePage({super.key});

  @override
  State<MStoreHomePage> createState() => _MStoreHomePageState();
}

class _MStoreHomePageState extends State<MStoreHomePage> {

  MStoreServicesController mStoreServices = Get.put(MStoreServicesController());
  ProductDetailsController productDetailsController = Get.put(ProductDetailsController());

  @override
  void initState() {
    // var productDetailData = mStoreServices.mStoreProductDetail[0].productDeatils![0].productVariantValueList![0];
    // TODO: implement initState
    // mStoreServices.fetchMStoreSliderData();
    // mStoreServices.fetchProductData();
    // mStoreServices.fetchProductDetail(mStoreServices.mStoreProductData[0].id.toString(),
    //     mStoreServices.mStoreProductData[0].variantId.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // debugPrint("ROHIT ${mStoreServices.mStoreSliderListData[0].image}");

    return Scaffold(
      backgroundColor: AppColors.white30,
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        shape: const CircleBorder(),
        backgroundColor: AppColors.secondary600,
        child: const Icon(Icons.message, color: AppColors.white,),),
      appBar: AppBar(
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColors.secondary600,
        title:  Text("Shubhga", style: AppTextStyles.kCaption14RegularTextStyle.copyWith(color: Colors.white)),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_rounded)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MStoreAddToCardPage()));
          }, icon: const Icon(Icons.shopping_cart)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MStoreLoginScreen()));
          }, icon: const Icon(Icons.person_pin)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: h20),
          child: Obx(() =>mStoreServices.isLoading.value?const CircularProgressIndicator(): Column(
            children: [
              CarouselSlider.builder(
                itemCount: mStoreServices.mStoreSliderListData.length,
                itemBuilder: (context, index, realIndex) {
                  // String? imageUrl = mStoreServices.mStoreSliderListData[index].image;
                  SliderData imageUrl = mStoreServices.mStoreSliderListData[index];
                  // debugPrint("image fdata$index : ${mStoreServices.mStoreSliderListData.length}");
                  return mStoreServices.mStoreSliderListData[index].image!.isNotEmpty?Container(
                    decoration: BoxDecoration(
                      // border: Border.all()
                    ),
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(left: 5),
                    child:
                    // imageUrl?.image == null
                    //     ? const Center(child: Text("Coming Soon"))
                    //     :
                      ClipRRect(
                        borderRadius: BorderRadius.circular(h10),
                        child: Image.network(
                        imageUrl.image??'',
                        fit: BoxFit.fitWidth,
                        errorBuilder: (context, error, stackTrace) => Text('Error Handling'),
                                            ).paddingAll(h5),
                      ),
                  ) : SizedBox();
                },
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                ),
              ).marginAll(h20),

            // Image.network('https://35f18db08c1c471b5147cec159f69ebe.r2.cloudflarestorage.com/mstore/media/slider/WhatsApp_Image_2023-07-19_at_7.00.13_PM.jpeg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=efdb70b66a7d6723788bb2c7e0a90036%2F20240611%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240611T084029Z&X-Amz-Expires=3600&X-Amz-SignedHeaders=host&X-Amz-Signature=73cdbcb417e6d96045295cd0c9ab4962d2ea3658086bcdbdd651cd24b1eb600d'),
              // Image.network(mStoreServices.mStoreProductModal[0].varientsMultipleImage![1].variantImage.toString()),

              Text('Our Best Seller', style: AppTextStyles.kBody15SemiBoldTextStyle,).paddingAll(h10),

              SizedBox(
                height: 310.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: mStoreServices.mStoreProductData.length,
                    itemBuilder: (context,index){
                    return mStoreCard(
                      onTap: () async {
                        // productDetailsController.fetchProductDetail();
                         await productDetailsController.fetchProductDetail(mStoreServices.mStoreProductData[index].id.toString(),
                            mStoreServices.mStoreProductData[index].variantId.toString()).whenComplete( ()=>  Get.to(MStoreDetailPage(
                           images: productDetailsController.productDetailsList.value.variantImage,
                           title: productDetailsController.productDetailsList.value.variantName,
                           price: productDetailsController.productDetailsList.value.actualPrice,
                           variantPrice: productDetailsController.productDetailsList.value.variantPrice,
                           stockStatus: productDetailsController.productDetailsList.value.stockSataus
                           // productDetail: productDetailsController.productDetailsList
                         )));
                        // debugPrint('DataProduct ${dataProduct}');
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => MStoreDetailPage(
                        // productId: mStoreServices.mStoreProductData[index].id.toString(),
                        // variantId: mStoreServices.mStoreProductData[index].variantId.toString(),
                          // images: mStoreServices.mStoreProductDetail[index].productDeatils?[index].productVariantValueList?[index].variantImage,
                          // title: mStoreServices.mStoreProductDetail[index].productDeatils?[index].productVariantValueList?[index].variantName,
                          // price: mStoreServices.mStoreProductDetail[index].productDeatils?[index].productVariantValueList?[index].variantPrice,
                          // productDetail: mStoreServices.mStoreProductDetail[index].productDeatils?[index].productVariantValueList??[],
                      // )));

                        // print('Product Detail ${mStoreServices.mStoreProductDetail[0].productDeatils?[0].productVariantValueList![index].variantName??[]},');
                        // setState(() {
                        //
                        // });

                        },
                      title: mStoreServices.mStoreProductData[index].variantName,
                      subtitle: mStoreServices.mStoreProductData[index].variantName,
                      price: mStoreServices.mStoreProductData[index].price,
                      picture: mStoreServices.mStoreProductData[index].image
                    );
                    }),
              )


        
            ],
          )),
        ),
      ),
    );
  }
}
