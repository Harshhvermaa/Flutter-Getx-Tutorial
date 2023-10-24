import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/controller/counterController.dart';

class CounterApplication extends StatelessWidget {
  CounterApplication({super.key});

  CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text( "${controller.counter.value}" ),
              ElevatedButton(onPressed: () {
                controller.counter++;
              }, child: Text("Increase Counter")),
              ElevatedButton(onPressed: () {
                if(controller.counter > 0 ){
                  controller.counter--;
                }else{
                  print("Counter value is not in negative");
                }
              }, child: Text("Decrease Counter"))
            ],
          );
        }),
      ),
    );
  }
}


