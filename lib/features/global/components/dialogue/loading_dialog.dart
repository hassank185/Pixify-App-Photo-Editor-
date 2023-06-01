


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showLoadingDialog(BuildContext context){
  showDialog(
    context: context,
    builder: (context){
      return WillPopScope(child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 32),
          child: CircularProgressIndicator(),)
        ],
      ),), onWillPop: ()async => false,);
    }
  );
}