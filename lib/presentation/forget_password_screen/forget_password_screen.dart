import 'package:flutter/material.dart';import 'package:handyman_service_appv2/core/app_export.dart';import 'package:handyman_service_appv2/widgets/custom_elevated_button.dart';import 'package:handyman_service_appv2/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class ForgetPasswordScreen extends StatelessWidget {ForgetPasswordScreen({Key? key}) : super(key: key);

TextEditingController emailController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 26.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgSignal, height: 30.v, width: 49.h, onTap: () {onTapImgSignal(context);}), SizedBox(height: 46.v), Text("Forget Password", style: CustomTextStyles.titleMediumMedium), SizedBox(height: 9.v), Container(width: 257.h, margin: EdgeInsets.only(left: 43.h, right: 42.h), child: Text("Please provide the email address and we will send you an email with instructions on how to reset your password.", maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodySmallBluegray500)), SizedBox(height: 20.v), CustomTextFormField(controller: emailController, hintText: "Enter email address", textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress), SizedBox(height: 79.v), CustomElevatedButton(text: "Send", onPressed: () {onTapSend(context);}), SizedBox(height: 5.v)]))))); } 
/// Navigates to the onboardingScreenOneScreen when the action is triggered.
onTapImgSignal(BuildContext context) { Navigator.pushNamed(context, AppRoutes.onboardingScreenOneScreen); } 
/// Navigates to the enterOtpScreen when the action is triggered.
onTapSend(BuildContext context) { Navigator.pushNamed(context, AppRoutes.enterOtpScreen); } 
 }
