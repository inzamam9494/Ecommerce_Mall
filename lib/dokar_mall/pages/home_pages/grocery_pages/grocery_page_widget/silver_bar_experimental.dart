import 'package:flutter/material.dart';

class Experimental extends StatelessWidget {
  const Experimental({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 100, child: Container(
            height: 100,
            width: double.maxFinite,
            color: Colors.red,
          )),
          Expanded(
            child: SizedBox(
              height: 1000,
              child: Container(
                child: ListView.builder(
                  itemCount: 100,
                    itemBuilder: (context, index){
                    return ListTile(
                      title: Text("Item $index"),
                    );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
