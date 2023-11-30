import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDialog extends StatefulWidget {
  const CustomDialog({super.key});

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {

  var data = Get.arguments;

  @override
  void initState() {
    // TODO: implement initState
    print( "Our First is : ${data[0]["first"] }" );
    print( "Our Second is : ${data[0]["second"] }" );
    super.initState();
  }

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
        child: Center(
          child: ElevatedButton(onPressed: () {
            Get.defaultDialog(
              title: "",
              titlePadding: EdgeInsets.zero,
              radius: 20,
              titleStyle: TextStyle(color: Colors.red,fontSize: 20),
              content: Column(
                children: [
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  ElevatedButton(onPressed: () {

                  }, child: Text("Subscribe"))
                ],
              )
            );
          }, child: Text("Show Dialog")),
        ),
      ),
    );
  }
}
