import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

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
              // Get.bottomSheet(
              //   Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       const SizedBox(height: 20),
              //       const Center(
              //         child: Text(
              //           'Bottom Sheet',
              //           style: TextStyle(fontSize: 18),
              //         ),
              //       ),
              //       OutlinedButton(
              //         onPressed: () {
              //           Get.back();
              //         },
              //         child: const Text('Close'),
              //       ),
              //     ],
              //   ),
              //   backgroundColor: Colors.white,
              //   elevation: 0,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              // );
            }, child: Text("Show Bottomsheet"))
          ],
        ),
      ),
    );
  }
}