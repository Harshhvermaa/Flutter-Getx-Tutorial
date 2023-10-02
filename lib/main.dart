import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/views/bottomsheet.dart';
import 'package:getx_statemanagement/views/customdialog.dart';
import 'package:getx_statemanagement/views/show_snackbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ShowBottomSheet()
    );
  }
}



