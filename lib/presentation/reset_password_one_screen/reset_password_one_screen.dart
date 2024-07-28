import 'package:flutter/material.dart';import 'package:handyman_service_appv2/core/app_export.dart';import 'package:handyman_service_appv2/widgets/custom_elevated_button.dart';import 'package:handyman_service_appv2/widgets/custom_floating_text_field.dart';
// ignore_for_file: must_be_immutable
class ResetPasswordOneScreen extends StatelessWidget {ResetPasswordOneScreen({Key? key}) : super(key: key);

TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgSignal, height: 30.v, width: 49.h, onTap: () {onTapImgSignal(context);}), SizedBox(height: 45.v), Text("Password reset", style: CustomTextStyles.titleMediumMedium), SizedBox(height: 62.v), CustomFloatingTextField(controller: passwordController, labelText: "Enter Password", labelStyle: CustomTextStyles.labelLargeBlack900, hintText: "Enter Password", textInputType: TextInputType.visiblePassword, obscureText: true, suffix: Container(margin: EdgeInsets.symmetric(horizontal: 19.h), child: CustomImageView(imagePath: ImageConstant.imgSettings, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 59.v)), SizedBox(height: 15.v), CustomFloatingTextField(controller: confirmpasswordController, labelText: "Confirm Password", labelStyle: CustomTextStyles.labelLargeBlack900, hintText: "Confirm Password", textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, obscureText: true, suffix: Container(margin: EdgeInsets.symmetric(horizontal: 19.h), child: CustomImageView(imagePath: ImageConstant.imgSettings, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 59.v)), SizedBox(height: 46.v), CustomElevatedButton(text: "Reset Password", onPressed: () {onTapResetPassword(context);}), SizedBox(height: 5.v)]))))); } 
/// Navigates to the onboardingScreenOneScreen when the action is triggered.
onTapImgSignal(BuildContext context) { Navigator.pushNamed(context, AppRoutes.onboardingScreenOneScreen); } 
/// Navigates to the loginFilledScreen when the action is triggered.
onTapResetPassword(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginFilledScreen); } 
 }
