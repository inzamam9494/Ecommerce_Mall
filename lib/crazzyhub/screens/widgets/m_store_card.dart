import 'package:dorkar_mall/crazzyhub/style/color.dart';
import 'package:dorkar_mall/crazzyhub/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../const/const_height.dart';
import '../../const/const_width.dart';

const String picture = 'https://images.unsplash.com/opengraph/1x1.png?blend=https%3A%2F%2Fimages.unsplash.com%2Fphoto-1481349518771-20055b2a7b24%3Fblend%3D000000%26blend-alpha%3D10%26blend-mode%3Dnormal%26crop%3Dfaces%252Cedges%26h%3D630%26mark%3Dhttps%253A%252F%252Fimages.unsplash.com%252Fopengraph%252Fsearch-input.png%253Fh%253D84%2526txt%253Drandom%2526txt-align%253Dmiddle%25252Cleft%2526txt-clip%253Dellipsis%2526txt-color%253D000000%2526txt-pad%253D80%2526txt-size%253D40%2526txt-width%253D660%2526w%253D750%2526auto%253Dformat%2526fit%253Dcrop%2526q%253D60%26mark-align%3Dmiddle%252Ccenter%26mark-w%3D750%26w%3D1200%26auto%3Dformat%26fit%3Dcrop%26q%3D60%26ixid%3DM3wxMjA3fDB8MXxzZWFyY2h8Nnx8cmFuZG9tfGVufDB8fHx8MTcxNzkzNzM1NXww%26ixlib%3Drb-4.0.3&blend-w=1&h=630&mark=https%3A%2F%2Fimages.unsplash.com%2Fopengraph%2Flogo.png&mark-align=top%2Cleft&mark-pad=50&mark-w=64&w=1200&auto=format&fit=crop&q=60';

Widget mStoreCard({String? title, String? subtitle, String? price, String? picture, required VoidCallback onTap}){
  return InkWell(
    onTap: onTap,
    child: Card(
      color: AppColors.white,
      elevation: 4,
      // margin: EdgeInsets.only(bottom: h20, left: h10),
      child: Container(
        height: 10.h,
        width: 200.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(h10),
              color: AppColors.warning20),
                // child: SizedBox(width: 700.w, child: Text(image??''))),
                child : ClipRRect(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(h10), topLeft: Radius.circular(h10)),
                    child: Image.network(picture??'', height: 180.h, width: 210.w, fit: BoxFit.fill,))),
            Text(title??'', style: AppTextStyles.kCaption12SemiBoldTextStyle.copyWith(color: AppColors.primary500)).marginOnly(bottom: h10, left: h10,right: h5),
            Text(subtitle??'', style: AppTextStyles.kSmall10RegularTextStyle.copyWith(color: AppColors.white60)).marginOnly(left: h10, right: h10),
            Text('₹ ${price??''}', style: AppTextStyles.kCaption12SemiBoldTextStyle,).marginAll(h5)
          ],
        ),
      ),
    ),
  );
}