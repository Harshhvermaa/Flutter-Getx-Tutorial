import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Any Screen"),
      ),
      body: Container(
        height: Get.height * 0.5,
        color: Colors.red,
        width: Get.width*0.5,
      ),
    );
  }
}
