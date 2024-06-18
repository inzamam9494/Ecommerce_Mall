import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../services/crazzy_services/crazzy_api_services.dart';

class CrazzyBrandList extends StatefulWidget {
  const CrazzyBrandList({super.key});

  @override
  State<CrazzyBrandList> createState() => _CrazzyBrandListState();
}

class _CrazzyBrandListState extends State<CrazzyBrandList> {
  CrazzyApiServices crazzyApiServices = CrazzyApiServices();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: crazzyApiServices.fetchBrandList(),
        builder: (context, snapshot){
          if(!snapshot.hasData){
            return const Center(child: CircularProgressIndicator());
          }else{
            return Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: snapshot.data.length,
                  itemBuilder: (context, index){
                    var brandList = snapshot.data[index];
                  return Container(
                    margin: const EdgeInsets.all(10),
                    height: 80,
                      width: 80,
                      child: Image.network(brandList["image"]));
                  }),
            );
          }
        },
      )
    );
  }
}
