import 'package:flutter/material.dart';import 'package:handyman_service_appv2/core/app_export.dart';import 'package:handyman_service_appv2/widgets/app_bar/appbar_leading_image.dart';import 'package:handyman_service_appv2/widgets/app_bar/appbar_subtitle_two.dart';import 'package:handyman_service_appv2/widgets/app_bar/custom_app_bar.dart';import 'package:handyman_service_appv2/widgets/custom_elevated_button.dart';import 'package:handyman_service_appv2/widgets/custom_floating_text_field.dart';import 'package:handyman_service_appv2/presentation/payment_status_bottomsheet/payment_status_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class PaymentsScreen extends StatelessWidget {PaymentsScreen({Key? key}) : super(key: key);

TextEditingController floatingTextFieldController = TextEditingController();

TextEditingController floatingTextFieldController1 = TextEditingController();

TextEditingController floatingTextFieldController2 = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray5001, resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 8.v), _buildFrame(context), Container(margin: EdgeInsets.only(right: 3.h), padding: EdgeInsets.fromLTRB(20.h, 32.v, 20.h, 34.v), decoration: AppDecoration.outlineBluegray100, child: Column(mainAxisSize: MainAxisSize.min, children: [_buildRow(context), SizedBox(height: 16.v), Divider(color: appTheme.blueGray100), SizedBox(height: 46.v), Text("Enter the card details to pay", style: CustomTextStyles.titleMediumMedium), SizedBox(height: 13.v), _buildFloatingTextField(context), SizedBox(height: 11.v), _buildRow1(context), SizedBox(height: 24.v), _buildButton(context), SizedBox(height: 48.v), Padding(padding: EdgeInsets.symmetric(horizontal: 40.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildButton1(context), _buildButton2(context)])), SizedBox(height: 41.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgLockfill, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("Secured by", style: CustomTextStyles.bodyMediumBlack900)), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("Paystack", style: CustomTextStyles.titleSmallBlack900_1))]), SizedBox(height: 41.v)]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Payment Method")); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 9.v), decoration: AppDecoration.fillGray50001, child: Row(children: [CustomImageView(imagePath: ImageConstant.imgFlag, height: 16.v, width: 20.h, margin: EdgeInsets.symmetric(vertical: 1.v)), Padding(padding: EdgeInsets.only(left: 16.h, top: 1.v), child: Text("Pay with Card", style: CustomTextStyles.bodyMediumGray400))])); } 
/// Section Widget
Widget _buildRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgFlutterflowJpeg, height: 42.v, width: 44.h), Padding(padding: EdgeInsets.only(bottom: 2.v), child: Column(children: [Text("dynamc@gmail.com", style: theme.textTheme.bodyMedium), SizedBox(height: 2.v), Align(alignment: Alignment.centerRight, child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("Pay", style: theme.textTheme.bodyMedium)), Padding(padding: EdgeInsets.only(left: 4.h), child: Text("NGN 200", style: CustomTextStyles.titleSmallPrimary))]))]))])); } 
/// Section Widget
Widget _buildFloatingTextField(BuildContext context) { return CustomFloatingTextField(controller: floatingTextFieldController, labelText: "Card Number", labelStyle: CustomTextStyles.labelLargeBluegray100, hintText: "Card Number", textInputType: TextInputType.number); } 
/// Section Widget
Widget _buildFloatingTextField1(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 6.h), child: CustomFloatingTextField(controller: floatingTextFieldController1, labelText: "Card Expiry", labelStyle: CustomTextStyles.labelLargeBluegray100, hintText: "Card Expiry"))); } 
/// Section Widget
Widget _buildFloatingTextField2(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 6.h), child: CustomFloatingTextField(controller: floatingTextFieldController2, labelText: "CVV", labelStyle: CustomTextStyles.labelLargeBluegray100, hintText: "CVV", textInputAction: TextInputAction.done))); } 
/// Section Widget
Widget _buildRow1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildFloatingTextField1(context), _buildFloatingTextField2(context)])); } 
/// Section Widget
Widget _buildButton(BuildContext context) { return CustomElevatedButton(text: "Pay NGN 200", onPressed: () {onTapButton(context);}); } 
/// Section Widget
Widget _buildButton1(BuildContext context) { return CustomElevatedButton(height: 30.v, width: 151.h, text: "Change Payment Method", leftIcon: Container(margin: EdgeInsets.only(right: 2.h), child: CustomImageView(imagePath: ImageConstant.imgArrowdownup, height: 14.adaptSize, width: 14.adaptSize)), buttonStyle: CustomButtonStyles.fillGrayTL8, buttonTextStyle: CustomTextStyles.bodySmallBlack900); } 
/// Section Widget
Widget _buildButton2(BuildContext context) { return CustomElevatedButton(height: 28.v, width: 104.h, text: "Cancel Payment ", margin: EdgeInsets.only(left: 10.h), leftIcon: Container(margin: EdgeInsets.only(right: 2.h), child: CustomImageView(imagePath: ImageConstant.imgX, height: 10.adaptSize, width: 10.adaptSize)), buttonStyle: CustomButtonStyles.fillGrayTL8, buttonTextStyle: CustomTextStyles.bodySmallBlack900); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 

/// Shows a modal bottom sheet with [PaymentStatusBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapButton(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>PaymentStatusBottomsheet(),isScrollControlled: true); } 
 }
