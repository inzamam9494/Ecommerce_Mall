import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExitFunctions{
  static Future<bool> _onBackButtonPressed(BuildContext context) async {
    bool? exitApp = await showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: const Text("Exit"),
            content: const Text("Do you want to close the app??"),
            actions: <Widget>[
              TextButton(onPressed: (){
                Navigator.of(context).pop(false);
              }, child: const Text("No")),
              TextButton(onPressed: (){
                SystemNavigator.pop();
              }, child: const Text("Yes")),
            ],
          );
        });
    return exitApp?? false;
  }
}