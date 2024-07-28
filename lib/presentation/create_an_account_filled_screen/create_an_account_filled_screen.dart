import 'package:flutter/material.dart';import 'package:handyman_service_appv2/core/app_export.dart';import 'package:handyman_service_appv2/widgets/custom_elevated_button.dart';import 'package:handyman_service_appv2/widgets/custom_floating_text_field.dart';
// ignore_for_file: must_be_immutable
class CreateAnAccountFilledScreen extends StatelessWidget {CreateAnAccountFilledScreen({Key? key}) : super(key: key);

TextEditingController floatingTextFieldEmailController = TextEditingController();

TextEditingController floatingTextFieldMobileNoController = TextEditingController();

TextEditingController floatingTextFieldPasswordController = TextEditingController();

TextEditingController floatingTextFieldConfirmPasswordController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgSignal, height: 30.v, width: 49.h, onTap: () {onTapImgSignal(context);}), SizedBox(height: 45.v), Text("Create an account", style: CustomTextStyles.titleMediumMedium), SizedBox(height: 62.v), _buildFloatingTextFieldEmail(context), SizedBox(height: 23.v), _buildInput(context), SizedBox(height: 23.v), _buildFloatingTextFieldPassword(context), SizedBox(height: 23.v), _buildFloatingTextFieldConfirmPassword(context), SizedBox(height: 32.v), _buildButtonSignUp(context), SizedBox(height: 5.v)]))))); } 
/// Section Widget
Widget _buildFloatingTextFieldEmail(BuildContext context) { return CustomFloatingTextField(controller: floatingTextFieldEmailController, labelText: "Email", labelStyle: CustomTextStyles.labelLargeBlack900, hintText: "Email", textInputType: TextInputType.emailAddress); } 
/// Section Widget
Widget _buildFloatingTextFieldMobileNo(BuildContext context) { return CustomFloatingTextField(width: 342.h, controller: floatingTextFieldMobileNoController, labelText: "+234 9036936746", labelStyle: CustomTextStyles.labelLargeBlack900, hintText: "+234 9036936746", alignment: Alignment.bottomCenter); } 
/// Section Widget
Widget _buildInput(BuildContext context) { return SizedBox(height: 59.v, width: 342.h, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topLeft, child: Container(width: 99.h, margin: EdgeInsets.only(left: 17.h), padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 1.v), decoration: AppDecoration.fillOnError, child: Text("Phone number", style: CustomTextStyles.labelLargeBlack900))), _buildFloatingTextFieldMobileNo(context)])); } 
/// Section Widget
Widget _buildFloatingTextFieldPassword(BuildContext context) { return CustomFloatingTextField(controller: floatingTextFieldPasswordController, labelText: "Password", labelStyle: CustomTextStyles.titleSmallBlack900, hintText: "Password", hintStyle: CustomTextStyles.titleSmallBlack900, textInputType: TextInputType.visiblePassword, obscureText: true, suffix: Container(margin: EdgeInsets.symmetric(horizontal: 19.h), child: CustomImageView(imagePath: ImageConstant.imgSettings, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 59.v), contentPadding: EdgeInsets.fromLTRB(30.h, 11.v, 30.h, 19.v)); } 
/// Section Widget
Widget _buildFloatingTextFieldConfirmPassword(BuildContext context) { return CustomFloatingTextField(controller: floatingTextFieldConfirmPasswordController, labelText: "Confirm Password", labelStyle: CustomTextStyles.titleSmallBlack900, hintText: "Confirm Password", hintStyle: CustomTextStyles.titleSmallBlack900, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, obscureText: true, suffix: Container(margin: EdgeInsets.symmetric(horizontal: 19.h), child: CustomImageView(imagePath: ImageConstant.imgSettings, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 59.v), contentPadding: EdgeInsets.fromLTRB(30.h, 11.v, 30.h, 19.v)); } 
/// Section Widget
Widget _buildButtonSignUp(BuildContext context) { return CustomElevatedButton(text: "Sign Up", onPressed: () {onTapButtonSignUp(context);}); } 
/// Navigates to the onboardingScreenOneScreen when the action is triggered.
onTapImgSignal(BuildContext context) { Navigator.pushNamed(context, AppRoutes.onboardingScreenOneScreen); } 
/// Navigates to the confirmEmailScreen when the action is triggered.
onTapButtonSignUp(BuildContext context) { Navigator.pushNamed(context, AppRoutes.confirmEmailScreen); } 
 }
