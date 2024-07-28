import 'package:flutter/material.dart';
import 'package:handyman_service_appv2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CategoriesPlumbingSelectAvailableHandymanThreeBottomsheet
    extends StatelessWidget {
  const CategoriesPlumbingSelectAvailableHandymanThreeBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 64.h,
        vertical: 172.v,
      ),
      decoration: AppDecoration.fillOnError.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgHttpsLottief,
        height: 250.adaptSize,
        width: 250.adaptSize,
        alignment: Alignment.center,
      ),
    );
  }
}
