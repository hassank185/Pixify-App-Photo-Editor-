


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixify/features/global/theme/app_colors.dart';

void showInfoSnackBar(BuildContext context,String text){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: AppColor.blackColor.withOpacity(0.8),
      content: Text(text),
    )
  );
}