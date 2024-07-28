import 'package:flutter/material.dart';import 'package:handyman_service_appv2/core/app_export.dart';import 'package:handyman_service_appv2/widgets/app_bar/appbar_leading_image.dart';import 'package:handyman_service_appv2/widgets/app_bar/appbar_title.dart';import 'package:handyman_service_appv2/widgets/app_bar/custom_app_bar.dart';class AccountScreen extends StatelessWidget {const AccountScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray5001, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Text("You have 3 notification today.", style: theme.textTheme.bodyMedium), SizedBox(height: 26.v), _buildNotificationRow(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarTitle(text: "Notifications")); } 
/// Section Widget
Widget _buildNotificationRow(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("Today", style: CustomTextStyles.titleSmallBlack900_1)), Text("Mark all read", style: CustomTextStyles.titleSmallGray50001)]); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
