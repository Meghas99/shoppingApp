import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shopping_mart/consts/consts.dart';
import 'package:shopping_mart/consts/list.dart';
import 'package:shopping_mart/screen/signup_screen.dart';
import 'package:shopping_mart/widgets/applogo.dart';
import 'package:shopping_mart/widgets/bg_widget.dart';
import 'package:shopping_mart/widgets/custom_textfield.dart';
import 'package:shopping_mart/widgets/our_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Column(
        children: [
          (context.screenHeight * 0.07).heightBox,
          applogo(),
          10.heightBox,
          "log in to $appname".text.fontFamily(bold).white.size(18).make(),
          10.heightBox,
          Column(
            children: [
              customTextfield(
                title: email,
                hint: emailHint,
              ),
              customTextfield(title: password, hint: passwordhint),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetPAss.text.make())),
              5.heightBox,
              //ourButton().box.width(context.screenWidth-50).make(),

              ourButton(
                      color: blue,
                      title: login,
                      textcolor: whiteColor,
                      onpress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              5.heightBox,
              createNewAccount.text.color(fontGrey).make(),
              5.heightBox,
              ourButton(
                  color: lightGrey,
                  title: signup,
                  textcolor: whiteColor,
                  onpress: () {
                    Get.to(() => SignupScreen());
                  }).box.width(context.screenWidth - 50).make(),
              10.heightBox,
              loginWith.text.color(fontGrey).make(),
              5.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => CircleAvatar(
                          radius: 25,
                          child: Image.asset(
                            socialIconList[index],
                            width: 30,
                          ),
                        )),
              ),
            ],
          )
              .box
              .white
              .rounded
              .padding(EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .shadowSm
              .make()
        ],
      )),
    ));
  }
}
