import 'package:flutter/material.dart';import 'package:handyman_service_appv2/core/app_export.dart';import 'package:handyman_service_appv2/widgets/custom_elevated_button.dart';import 'package:handyman_service_appv2/widgets/custom_floating_text_field.dart';
// ignore_for_file: must_be_immutable
class LoginFilledScreen extends StatelessWidget {LoginFilledScreen({Key? key}) : super(key: key);

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 26.v), Expanded(child: SingleChildScrollView(child: _buildLoginSection(context)))]))))); } 
/// Section Widget
Widget _buildLoginSection(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 23.h, right: 23.h, bottom: 468.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgSignal, height: 30.v, width: 49.h, onTap: () {onTapImgSignal(context);}), SizedBox(height: 48.v), Text("Log in ", style: theme.textTheme.headlineSmall), SizedBox(height: 50.v), CustomFloatingTextField(controller: emailController, labelText: "Email", labelStyle: CustomTextStyles.labelLargeBlack900, hintText: "Email", textInputType: TextInputType.emailAddress), SizedBox(height: 15.v), CustomFloatingTextField(controller: passwordController, labelText: "Password", labelStyle: CustomTextStyles.titleSmallBlack900, hintText: "Password", hintStyle: CustomTextStyles.titleSmallBlack900, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, obscureText: true, suffix: Container(margin: EdgeInsets.symmetric(horizontal: 19.h), child: CustomImageView(imagePath: ImageConstant.imgSettings, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 59.v), contentPadding: EdgeInsets.fromLTRB(30.h, 11.v, 30.h, 19.v)), SizedBox(height: 24.v), Align(alignment: Alignment.centerLeft, child: GestureDetector(onTap: () {onTapTxtForgotPassword(context);}, child: Padding(padding: EdgeInsets.only(left: 104.h), child: Text("Forgot password?", style: CustomTextStyles.bodyMediumOnSecondaryContainer)))), SizedBox(height: 60.v), CustomElevatedButton(text: "Log in", onPressed: () {onTapLogIn(context);})])); } 
/// Navigates to the onboardingScreenOneScreen when the action is triggered.
onTapImgSignal(BuildContext context) { Navigator.pushNamed(context, AppRoutes.onboardingScreenOneScreen); } 
/// Navigates to the forgetPasswordFilledScreen when the action is triggered.
onTapTxtForgotPassword(BuildContext context) { Navigator.pushNamed(context, AppRoutes.forgetPasswordFilledScreen); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapLogIn(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeContainerScreen); } 
 }
