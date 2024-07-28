import '../categories_plumbing_select_available_handyman_two_page/widgets/userprofile_item_widget.dart';import 'package:flutter/material.dart';import 'package:handyman_service_appv2/core/app_export.dart';import 'package:handyman_service_appv2/widgets/custom_elevated_button.dart';import 'package:handyman_service_appv2/widgets/custom_icon_button.dart';import 'package:handyman_service_appv2/presentation/categories_plumbing_select_available_handyman_one_bottomsheet/categories_plumbing_select_available_handyman_one_bottomsheet.dart';class CategoriesPlumbingSelectAvailableHandymanTwoPage extends StatefulWidget {const CategoriesPlumbingSelectAvailableHandymanTwoPage({Key? key}) : super(key: key);

@override CategoriesPlumbingSelectAvailableHandymanTwoPageState createState() =>  CategoriesPlumbingSelectAvailableHandymanTwoPageState();

 }
class CategoriesPlumbingSelectAvailableHandymanTwoPageState extends State<CategoriesPlumbingSelectAvailableHandymanTwoPage> with  AutomaticKeepAliveClientMixin<CategoriesPlumbingSelectAvailableHandymanTwoPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray50, body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Column(children: [Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: Column(children: [Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 103.h), child: Text("145 Reviews", style: CustomTextStyles.labelMediumGray400))), SizedBox(height: 6.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgSolarMapArrowSquareBold, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(left: 4.h, top: 3.v), child: Text("Hyde Park - W2 2UH", style: CustomTextStyles.labelMediumBlack900))]), SizedBox(height: 6.v), CustomElevatedButton(height: 25.v, width: 109.h, text: "Discount Available", buttonStyle: CustomButtonStyles.fillDeepOrange, buttonTextStyle: CustomTextStyles.labelSmallOnError), SizedBox(height: 21.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 30.adaptSize, width: 30.adaptSize, padding: EdgeInsets.all(3.h), decoration: IconButtonStyleHelper.fillOnSecondaryContainer, onTap: () {onTapBtnWhatsapp(context);}, child: CustomImageView(imagePath: ImageConstant.imgWhatsapp)), Padding(padding: EdgeInsets.only(left: 7.h), child: CustomIconButton(height: 30.adaptSize, width: 30.adaptSize, padding: EdgeInsets.all(3.h), decoration: IconButtonStyleHelper.fillDeepOrange, onTap: () {onTaoNext(context);}, child: CustomImageView(imagePath: ImageConstant.imgGroup17)))]), SizedBox(height: 12.v), Container(padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 7.v), decoration: AppDecoration.fillOnError.copyWith(borderRadius: BorderRadiusStyle.customBorderTL12), child: Column(mainAxisSize: MainAxisSize.min, children: [Text("About", style: CustomTextStyles.labelMediumBlack900), SizedBox(height: 9.v), Divider(color: appTheme.redA10033), SizedBox(height: 8.v), Container(width: 308.h, margin: EdgeInsets.only(left: 14.h, right: 22.h), child: Text("I have a genuine passion for my work! I adore being outdoors and am consistently prepared to go the extra mile to ensure our customers' satisfaction. Feel free to give me a call or message for same-day services.", maxLines: 4, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallBlack90012)), SizedBox(height: 11.v), Text("Services", style: CustomTextStyles.labelMediumBlack900), SizedBox(height: 9.v), Divider(color: appTheme.redA10033), SizedBox(height: 8.v), Align(alignment: Alignment.centerLeft, child: Container(width: 205.h, margin: EdgeInsets.only(left: 15.h), child: Text("Leaky faucet repair\nPipe installation and repair\nDrain cleaning\nToilet repair and installation\nWater heater installation\nAnd any plumbing related services ", maxLines: 6, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallBlack90012))), SizedBox(height: 10.v), Text("Reviews", style: CustomTextStyles.labelMediumBlack900), SizedBox(height: 9.v), _buildUserProfile(context), SizedBox(height: 18.v), CustomElevatedButton(text: "Book Now", buttonStyle: CustomButtonStyles.fillGray, buttonTextStyle: CustomTextStyles.titleMediumOnError, onPressed: () {onTapBookNow(context);}), SizedBox(height: 32.v)]))]))]))))); } 
/// Section Widget
Widget _buildUserProfile(BuildContext context) { return Container(height: 118.v, padding: EdgeInsets.symmetric(horizontal: 11.h), child: ListView.separated(padding: EdgeInsets.only(left: 4.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 341.0.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.redA10033, indent: 0.5.h, endIndent: 0.5.h));}, itemCount: 2, itemBuilder: (context, index) {return UserprofileItemWidget();})); } 
/// Navigates to the messagesCallScreen when the action is triggered.
onTapBtnWhatsapp(BuildContext context) { Navigator.pushNamed(context, AppRoutes.messagesCallScreen); } 
/// Navigates to the messagesChatOneScreen when the action is triggered.
onTaoNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.messagesChatOneScreen); } 

/// Shows a modal bottom sheet with [CategoriesPlumbingSelectAvailableHandymanOneBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapBookNow(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>CategoriesPlumbingSelectAvailableHandymanOneBottomsheet(),isScrollControlled: true); } 
 }
