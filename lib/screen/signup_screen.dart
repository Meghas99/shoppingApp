import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shopping_mart/consts/consts.dart';
import 'package:shopping_mart/consts/list.dart';
import 'package:shopping_mart/widgets/applogo.dart';
import 'package:shopping_mart/widgets/bg_widget.dart';
import 'package:shopping_mart/widgets/custom_textfield.dart';
import 'package:shopping_mart/widgets/our_buttons.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
          "join in SMart $appname".text.fontFamily(bold).white.size(18).make(),
          10.heightBox,
          Column(
            children: [
              customTextfield(hint: namehint, title: name),
              customTextfield(
                title: email,
                hint: emailHint,
              ),
              customTextfield(title: password, hint: passwordhint),
              customTextfield(title: retypePassword, hint: passwordhint),

              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetPAss.text.make())),
              5.heightBox,
              //ourButton().box.width(context.screenWidth-50).make(),

              Row(
                children: [
                  Checkbox(
                      checkColor: purple,
                      value: false,
                      onChanged: (newValue) {}),
                  10.widthBox,
                  Expanded(
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "I agree to the ",
                          style: TextStyle(
                            fontFamily: bold,
                            color: fontGrey,
                          )),
                      TextSpan(
                          text: termsandCount,
                          style: TextStyle(
                            fontFamily: bold,
                            color: redcolor,
                          )),
                      TextSpan(
                          text: " & ",
                          style: TextStyle(
                            fontFamily: bold,
                            color: fontGrey,
                          )),
                      TextSpan(
                          text: privacyPolicy,
                          style: TextStyle(
                            fontFamily: bold,
                            color: redcolor,
                          ))
                    ])),
                  )
                ],
              ),
              5.heightBox,
              ourButton(
                      color: blue,
                      title: signup,
                      textcolor: whiteColor,
                      onpress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),

              10.heightBox,
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: alreadyHaveAccount,
                    style: TextStyle(fontFamily: bold, color: fontGrey)),
                TextSpan(
                    text: login,
                    style: TextStyle(fontFamily: bold, color: redcolor))
              ])).onTap(() {
                Get.back();
              })
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
