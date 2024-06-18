import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../const/const_height.dart';
import '../../../const/const_width.dart';
import '../../../style/color.dart';
import '../../../style/text_style.dart';

class ShubhgaCard extends StatefulWidget {
  String? cardImage;
  String? text;
  String? price;
   ShubhgaCard({super.key, this.cardImage, this.text, this.price});

  @override
  State<ShubhgaCard> createState() => _ShubhgaCardState();
}

class _ShubhgaCardState extends State<ShubhgaCard> {

  var isVisible = false;
  var count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(h10),
      decoration: BoxDecoration(
          color: AppColors.white,
          // border: Border.all(color: AppColors.white80),
          borderRadius: BorderRadius.circular(h10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 120.h,
            width: 100,
            // color: AppColors.warning20,
            child: Image.network(widget.cardImage??'').marginAll(h5),
          ),
          Container(
            height: 120.h,
            width: 120.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.text??'',style: AppTextStyles.kSmall10SemiBoldTextStyle,),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Rs. ${widget.price}', style: AppTextStyles.kSmall10SemiBoldTextStyle,),
                    const Text('Price 8000', style: TextStyle(decoration: TextDecoration.lineThrough),),

                  ],
                )
              ],
            ),
          ),
          // IconButton(onPressed: (){},icon: Icon(Icons.add_circle_outline_outlined, color: Colors.red,)),
          Container(
            height: 120.h,
            width: w50,
            // color: AppColors.info40,
            child: Column(
              children: [
                Column(
                  children: [
                    IconButton(onPressed: (){
                      if(count<=1){
                        setState(() {
                          isVisible = false;
                        });
                      }else{
                        setState(() {
                          count--;
                        });
                      }
                    }, icon: Icon(Icons.remove_circle_outline,color: AppColors.info60,)),
                    Text('$count Pcs', style: AppTextStyles.kSmall10SemiBoldTextStyle,),
                    IconButton(onPressed: (){
                      setState(() {
                        count++;
                      });
                    }, icon: Icon(Icons.add_circle_outline_outlined, color:AppColors.info60,))
                  ],
                )
              ],
            ),
            // child: Card(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Icon(Icons.remove),
            //       Text('1'),
            //       Icon(Icons.add)
            //     ],
            //   ),
            // ),
          ),
        ],
      ),
    );;
  }
}
