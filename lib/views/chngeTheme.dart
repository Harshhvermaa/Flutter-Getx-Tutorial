import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              child: ListTile(
                title: Text("Show BottomSheet",style: TextStyle(color: Colors.white),),
                onTap: () {
                  openBottomSheet();
                },
              ),
            )
          ],
        ),
      ),
    );
  }

openBottomSheet(){
  Get.bottomSheet(
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        ListTile(
          title: Text("Light Mode",style: TextStyle(color: Colors.black),),
            onTap: () {
              Get.changeTheme(ThemeData.light());
              Get.back();
            }
        ),
        ListTile(
          title: Text("Dark Mode",style: TextStyle(color: Colors.black)),
          onTap: () {
            Get.changeTheme(ThemeData.dark());
            Get.back();
          }
        ),
        ListTile(
          title: Text("Close bottom sheet",style: TextStyle(color: Colors.black)),
          onTap: () => Get.back(),
        ),
      ],
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
}
