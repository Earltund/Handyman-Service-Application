import 'package:flutter/material.dart';
import 'package:handyman_service_appv2/core/app_export.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBackgroundSheets,
                height: 45.v,
                width: 390.h,
              ),
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Cancel",
                    style: CustomTextStyles.bodyLargeSFProTextLightblueA700,
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              _buildNewMessageRow(context),
              SizedBox(height: 12.v),
              Container(
                width: 374.h,
                padding: EdgeInsets.symmetric(vertical: 14.v),
                decoration: AppDecoration.outlineGray,
                child: Text(
                  "To: handymanfix@gmail.com",
                  style: CustomTextStyles.bodyMediumSFProTextBluegray40001,
                ),
              ),
              Container(
                width: 374.h,
                padding: EdgeInsets.symmetric(vertical: 14.v),
                decoration: AppDecoration.outlineGray,
                child: Text(
                  "Cc/Bcc, From: dynamic@icloud.com",
                  style: CustomTextStyles.bodyMediumSFProTextBluegray40001,
                ),
              ),
              Container(
                width: 374.h,
                padding: EdgeInsets.symmetric(vertical: 14.v),
                decoration: AppDecoration.outlineGray,
                child: Text(
                  "Subject:",
                  style: CustomTextStyles.bodyMediumSFProTextBluegray40001,
                ),
              ),
              SizedBox(height: 56.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Sent from my iPhone",
                    style: CustomTextStyles.bodyLargeSFProTextBlack900,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewMessageRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 13.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New Message",
            style: theme.textTheme.displaySmall,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowUp,
            height: 35.adaptSize,
            width: 35.adaptSize,
            margin: EdgeInsets.only(bottom: 6.v),
          ),
        ],
      ),
    );
  }
}
