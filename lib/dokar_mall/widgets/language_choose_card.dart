import 'package:flutter/material.dart';

class LanguageChooseCard extends StatelessWidget {
  void Function()? onTap;
  final String image;
  final String language;
  final Color color;
   LanguageChooseCard({super.key, required this.image, required this.language, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.all(15),
        elevation: 4,
        color: Colors.white,
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.asset(image),
                    ),
                  ),
                   Text(language,
                  style:const TextStyle(
                    fontSize: 16,
                  ),)
                ],
              ),
               Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.check_circle, color: color,size: 30,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
