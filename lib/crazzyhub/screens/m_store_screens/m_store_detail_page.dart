import 'package:carousel_slider/carousel_slider.dart';
import 'package:dorkar_mall/crazzyhub/screens/m_store_screens/controllers/product_details_controller.dart';
import 'package:dorkar_mall/crazzyhub/services/m_store_services/m_store_services.dart';
import 'package:dorkar_mall/dokar_mall/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../const/const_height.dart';
import '../../services/models/m_store_new_product_detail_model.dart';
import '../../style/color.dart';
import '../../style/text_style.dart';
import 'm_store_add_to_card_page.dart';

class MStoreDetailPage extends StatelessWidget {
  // List<ProductVariantValueList> productDetail;
  final productId, variantId;
  String? images;
  String? title;
  String? price;
  String? variantPrice;
  String? stockStatus;
  MStoreDetailPage({super.key, this.productId, this.variantId, this.images, this.title, this.price, this.variantPrice, this.stockStatus });

  MStoreServicesController mStoreServices = Get.put(MStoreServicesController());
  ProductDetailsController productDetailsController = Get.put(ProductDetailsController());


  @override
  Widget build(BuildContext context) {
    // var productDetail = mStoreServices.mStoreProductDetail[0].productDeatils![0].productVariantValueList![0];
    // var productData = mStoreServices.mStoreProductData[0];
    // debugPrint('Satyam ${productDetail[0].variantName}');
    return Scaffold(
        backgroundColor: AppColors.white30,
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
        ],
      ),
      body: Container(
        child: Obx(() => mStoreServices.isLoading.value?const CircularProgressIndicator() : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             CarouselSlider.builder(
              // itemCount: mStoreServices.mStoreProductDetail[0].productDeatils?[0].productVariantValueList?[0].varientsMultipleImage?.length,
               itemCount: 10,
              itemBuilder: (context, index, realIndex) {
                debugPrint("image fdata$index : ${price}");
                  return Container(
                    decoration: BoxDecoration(
                      // border: Border.all(color: AppColors.secondary600)
                    ),
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(left: 5),
                    child:
                    Image.network(
                      images!,
                      // productDetail[index].varientsMultipleImage![index].variantImage.toString(),
                      errorBuilder: (context, error, stackTrace) => const Text('Error Handling'),
                    ).paddingAll(h5),
                  );
              },
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
              ),
            ).marginAll(h20),

            Text(
              // productDetail[0].variantName.toString(),
              title!,
            style: AppTextStyles.kCaption14RegularTextStyle.copyWith(color: AppColors.primary),),

            // Text(productDetail.actualPrice.toString(),
            //   style: AppTextStyles.kHeading1TextStyle.copyWith(color: AppColors.primary),),



            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Rs.  ',
                  style: AppTextStyles.kCaption14RegularTextStyle.copyWith(color: AppColors.white100),),
                Text(
                  // '₹ ${productDetail[0].actualPrice}',
                  '₹${price}  ',
                  style: AppTextStyles.kCaption14RegularTextStyle.copyWith(color: AppColors.error40),),
                Text(
                  // '₹ ${productDetail[0].variantPrice}',
                    '₹${variantPrice}',
                    style: AppTextStyles.kCaption12WRegularTextStyle.copyWith(decoration: TextDecoration.lineThrough))
            ],).marginOnly(bottom: h10, top: h10),

            Text('${stockStatus}', style: AppTextStyles.kCaption12SemiBoldTextStyle.copyWith(color: stockStatus == 'In-stock'? AppColors.success40: AppColors.error40),),

            const Divider(),

            SizedBox(height:h50, width: double.maxFinite, child: CustomButton(color: AppColors.secondary600, onTap: (){
              productDetailsController.addToCart();
              productDetailsController.cartList();
            }, text: 'Add to Cart')).marginAll(h10),

          ],
        ).paddingAll(h10),
      ),
    ));
  }
}

Widget details({String? text1, }){
  return Row(
    children: [
      Text('Key Ingredient : ', style: AppTextStyles.kBody20RegularTextStyle.copyWith(color: AppColors.white60),),
      Text('Kelp, Flame of The Forest', style: AppTextStyles.kBody20RegularTextStyle.copyWith(color: AppColors.error60),)
    ],
  );
}
