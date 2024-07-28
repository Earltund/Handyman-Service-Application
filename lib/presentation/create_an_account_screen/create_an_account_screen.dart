import 'package:flutter/material.dart';import 'package:handyman_service_appv2/core/app_export.dart';import 'package:handyman_service_appv2/widgets/custom_elevated_button.dart';import 'package:handyman_service_appv2/widgets/custom_floating_text_field.dart';import 'package:handyman_service_appv2/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class CreateAnAccountScreen extends StatelessWidget {CreateAnAccountScreen({Key? key}) : super(key: key);

TextEditingController emailFieldController = TextEditingController();

TextEditingController phoneNumberFieldController = TextEditingController();

TextEditingController passwordFieldController = TextEditingController();

TextEditingController confirmPasswordFieldController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 26.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 366.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgSignal, height: 30.v, width: 49.h, onTap: () {onTapImgSignal(context);}), SizedBox(height: 45.v), Text("Create an account", style: CustomTextStyles.titleMediumMedium), SizedBox(height: 62.v), _buildEmailField(context), SizedBox(height: 23.v), _buildPhoneNumberField(context), SizedBox(height: 23.v), _buildPasswordField(context), SizedBox(height: 23.v), _buildConfirmPasswordField(context), SizedBox(height: 32.v), _buildSignUpButton(context)]))))]))))); } 
/// Section Widget
Widget _buildEmailField(BuildContext context) { return CustomTextFormField(controller: emailFieldController, hintText: "Enter email address", textInputType: TextInputType.emailAddress); } 
/// Section Widget
Widget _buildPhoneNumberField(BuildContext context) { return CustomFloatingTextField(controller: phoneNumberFieldController, labelText: "Phone number", labelStyle: CustomTextStyles.labelLargeBluegray100, hintText: "Phone number", textInputType: TextInputType.phone); } 
/// Section Widget
Widget _buildPasswordField(BuildContext context) { return CustomFloatingTextField(controller: passwordFieldController, labelText: "Password", labelStyle: CustomTextStyles.labelLargeBluegray100, hintText: "Password", textInputType: TextInputType.visiblePassword, obscureText: true, suffix: Container(margin: EdgeInsets.symmetric(horizontal: 19.h), child: CustomImageView(imagePath: ImageConstant.imgSettings, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 59.v)); } 
/// Section Widget
Widget _buildConfirmPasswordField(BuildContext context) { return CustomFloatingTextField(controller: confirmPasswordFieldController, labelText: "Confirm Password", labelStyle: CustomTextStyles.labelLargeBluegray100, hintText: "Confirm Password", textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, obscureText: true, suffix: Container(margin: EdgeInsets.symmetric(horizontal: 19.h), child: CustomImageView(imagePath: ImageConstant.imgSettings, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 59.v)); } 
/// Section Widget
Widget _buildSignUpButton(BuildContext context) { return CustomElevatedButton(text: "Sign Up", onPressed: () {onTapNext(context);}); } 
/// Navigates to the onboardingScreenOneScreen when the action is triggered.
onTapImgSignal(BuildContext context) { Navigator.pushNamed(context, AppRoutes.onboardingScreenOneScreen); } 
/// Navigates to the enterOtpScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.enterOtpScreen); } 
 }
