import 'package:flutter/material.dart';import 'package:handyman_service_appv2/core/app_export.dart';class ProfilePage extends StatelessWidget {const ProfilePage({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray5001, body: Container(width: double.maxFinite, decoration: AppDecoration.fillGray5001, child: Column(children: [_buildProfileStack(context), SizedBox(height: 17.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: _buildPaymentMethods(context, userImage: ImageConstant.imgUser, paymentMethods: "Account", onTapPaymentMethods: () {onTapNext(context);})), SizedBox(height: 9.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: _buildPaymentMethods(context, userImage: ImageConstant.imgFlag, paymentMethods: "Payment methods", onTapPaymentMethods: () {onTapPaymentMethodsRow(context);})), SizedBox(height: 9.v), _buildNotificationsRow(context), SizedBox(height: 9.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: _buildPaymentMethods(context, userImage: ImageConstant.imgInfo, paymentMethods: "Help", onTapPaymentMethods: () {onTapHelp(context);})), SizedBox(height: 9.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: _buildPaymentMethods(context, userImage: ImageConstant.imgLock, paymentMethods: "Privacy policy", onTapPaymentMethods: () {onTapPrivacyPolicy(context);})), SizedBox(height: 9.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: _buildPaymentMethods(context, userImage: ImageConstant.imgGroup, paymentMethods: "Terms of use", onTapPaymentMethods: () {onTapTermsOfUse(context);})), SizedBox(height: 9.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: _buildPaymentMethods(context, userImage: ImageConstant.imgRefresh, paymentMethods: "Logout", onTapPaymentMethods: () {onTapLogout(context);}))])))); } 
/// Section Widget
Widget _buildProfileStack(BuildContext context) { return SizedBox(height: 199.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgEllipse1, height: 159.v, width: 390.h, alignment: Alignment.topCenter), Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.symmetric(horizontal: 91.h, vertical: 11.v), decoration: AppDecoration.outlineBlack900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgEllipse2, height: 93.adaptSize, width: 93.adaptSize, radius: BorderRadius.circular(46.h)), SizedBox(height: 8.v), Text("Ademoye Motunrayo", style: CustomTextStyles.titleMediumOnPrimaryContainerMedium), SizedBox(height: 2.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 12.h), child: Text("Ademoyemotun@gmail.com", style: CustomTextStyles.bodySmallGray50001)))])))])); } 
/// Section Widget
Widget _buildNotificationsRow(BuildContext context) { return GestureDetector(onTap: () {onTapNotificationsRow(context);}, child: Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v), decoration: AppDecoration.outlineBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgNotification, height: 20.v, width: 18.h), Padding(padding: EdgeInsets.only(left: 19.h, top: 3.v, bottom: 3.v), child: Text("Notifications", style: CustomTextStyles.titleSmallMedium)), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRightOnprimarycontainer, height: 24.adaptSize, width: 24.adaptSize)]))); } 
/// Common widget
Widget _buildPaymentMethods(BuildContext context, {required String userImage, required String paymentMethods, Function? onTapPaymentMethods, }) { return GestureDetector(onTap: () {onTapPaymentMethods!.call();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 16.v), decoration: AppDecoration.outlineBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: userImage, height: 16.v, width: 20.h, margin: EdgeInsets.symmetric(vertical: 4.v)), Padding(padding: EdgeInsets.only(left: 18.h, top: 4.v, bottom: 2.v), child: Text(paymentMethods, style: CustomTextStyles.titleSmallMedium.copyWith(color: theme.colorScheme.onPrimaryContainer))), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRightOnprimarycontainer, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(right: 1.h))]))); } 
/// Navigates to the accountScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.accountScreen); } 
/// Navigates to the paymentsScreen when the action is triggered.
onTapPaymentMethodsRow(BuildContext context) { Navigator.pushNamed(context, AppRoutes.paymentsScreen); } 
/// Navigates to the notificationScreen when the action is triggered.
onTapNotificationsRow(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationScreen); } 
/// Navigates to the helpScreen when the action is triggered.
onTapHelp(BuildContext context) { Navigator.pushNamed(context, AppRoutes.helpScreen); } 
/// Navigates to the privacyPolicyScreen when the action is triggered.
onTapPrivacyPolicy(BuildContext context) { Navigator.pushNamed(context, AppRoutes.privacyPolicyScreen); } 
/// Navigates to the termsOfUseScreen when the action is triggered.
onTapTermsOfUse(BuildContext context) { Navigator.pushNamed(context, AppRoutes.termsOfUseScreen); } 
/// Navigates to the loginFirstTimeUserScreen when the action is triggered.
onTapLogout(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginFirstTimeUserScreen); } 
 }
