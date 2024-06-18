import 'package:dorkar_mall/crazzyhub/screens/m_store_screens/controllers/product_details_controller.dart';
import 'package:dorkar_mall/crazzyhub/screens/m_store_screens/widgets/shubhga_card.dart';
import 'package:dorkar_mall/dokar_mall/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../const/const_height.dart';
import '../../const/const_width.dart';
import '../../services/m_store_services/m_store_services.dart';
import '../../style/color.dart';
import '../../style/text_style.dart';
import 'm_store_payment_screen.dart';

class MStoreAddToCardPage extends StatefulWidget {
  const MStoreAddToCardPage({super.key});

  @override
  State<MStoreAddToCardPage> createState() => _MStoreAddToCardPageState();
}

class _MStoreAddToCardPageState extends State<MStoreAddToCardPage> {

  MStoreServicesController mStoreServices = Get.put(MStoreServicesController());
  ProductDetailsController productDetailsController = Get.put(ProductDetailsController());

  int cardCount = 1;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white30,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppColors.secondary600,
          onPressed: (){
          Get.to(MStorePaymentScreen());
          }, label: Text('Buy Now',style: AppTextStyles.kCaption12SemiBoldTextStyle.copyWith(color: AppColors.white),).marginOnly(left: h100, right: h100)),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColors.secondary600,
        title:  Text("Cart Page", style: AppTextStyles.kCaption14RegularTextStyle.copyWith(color: Colors.white)),
        actions: [
          // IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_rounded)),
          // IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(h10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShubhgaCard(cardImage: mStoreServices.mStoreProductData[0].image.toString(),price: '7700', text: 'Face Cream'),
          ],
        ),
      ),
    );
  }
}

// Widget shubhgaAddToCard({String? cardImage, String? text, String? price, String? count }){
//   return Container(
//     margin: EdgeInsets.all(h10),
//     decoration: BoxDecoration(
//       color: AppColors.white,
//       // border: Border.all(color: AppColors.white80),
//       borderRadius: BorderRadius.circular(h10)
//     ),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Container(
//           height: 120.h,
//           width: 100,
//           // color: AppColors.warning20,
//           child: Image.network(cardImage??'').marginAll(h5),
//         ),
//         Container(
//           height: 120.h,
//           width: 120.w,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(text??'',style: AppTextStyles.kSmall10SemiBoldTextStyle,),
//                 ],
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text('Rs. $price', style: AppTextStyles.kSmall10SemiBoldTextStyle,),
//                   const Text('Price 8000', style: TextStyle(decoration: TextDecoration.lineThrough),),
//
//                 ],
//               )
//             ],
//           ),
//         ),
//         // IconButton(onPressed: (){},icon: Icon(Icons.add_circle_outline_outlined, color: Colors.red,)),
//         Container(
//           height: 120.h,
//           width: w50,
//           // color: AppColors.info40,
//           child: Visibility(
//             visible: true,
//             child: Column(
//               children: [
//                 IconButton(onPressed: (){}, icon: Icon(Icons.remove_circle_outline,color: AppColors.info60,)),
//                 Text('$count Pcs', style: AppTextStyles.kSmall10SemiBoldTextStyle,),
//                 IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline_outlined, color:AppColors.info60,))
//               ],
//             ),
//           ),
//           // child: Card(
//           //   child: Row(
//           //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           //     children: [
//           //       Icon(Icons.remove),
//           //       Text('1'),
//           //       Icon(Icons.add)
//           //     ],
//           //   ),
//           // ),
//         ),
//       ],
//     ),
//   );
// }
