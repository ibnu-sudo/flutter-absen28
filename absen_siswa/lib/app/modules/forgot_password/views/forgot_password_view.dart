import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FORGOT PASSWORD'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Column(
            children: [
              // Image.asset("assets/images/a.png"),
              Image.asset('../../../../assets/images/forget.jpg'),
              // <-- SEE HERE
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            autocorrect: false,
            controller: controller.emailC,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Obx(
            () => ElevatedButton(
              onPressed: () {
                if (controller.isLoading.isFalse) {
                  controller.sendEmail();
                }
              },
              child: Text(
                  controller.isLoading.isFalse ? "SEND EMAIL" : "LOADING. . ."),
            ),
          ),
        ],
      ),
    );
  }
}
