import 'package:flutter/material.dart';import 'package:handyman_service_appv2/core/app_export.dart';class SplashScreen extends StatelessWidget {const SplashScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray900, body: SizedBox(width: double.maxFinite, child: Column(children: [Spacer(), CustomImageView(imagePath: ImageConstant.imgFix, height: 60.v, width: 100.h, onTap: () {onTapNext(context);}), Opacity(opacity: 0.05, child: CustomImageView(imagePath: ImageConstant.imgRectangle1, height: 422.v, width: 221.h, radius: BorderRadius.circular(60.h), alignment: Alignment.centerRight))])))); } 
/// Navigates to the onboardingScreenOneScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.onboardingScreenOneScreen); } 
 }
