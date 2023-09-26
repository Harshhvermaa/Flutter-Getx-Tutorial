import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowSnackbar extends StatelessWidget {
  const ShowSnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx State Management"),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Get.showSnackbar(
                  GetSnackBar(
                    title: "Snackbar appears successfully",
                    message: "Hello guys, Welcome back to my flutter channel",
                    borderRadius: 20,
                    padding: EdgeInsets.all(20),
                    animationDuration: Duration(seconds: 2),
                    duration: Duration(seconds: 2),
                    margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    snackPosition: SnackPosition.TOP,
                    isDismissible: true,
                  ));
            }, child: Text("Show snackbar"))
          ],
        ),
      ),
    );
  }
}