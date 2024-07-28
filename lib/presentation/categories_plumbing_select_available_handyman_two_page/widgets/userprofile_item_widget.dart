import 'package:flutter/material.dart';
import 'package:handyman_service_appv2/core/app_export.dart';
import 'package:handyman_service_appv2/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105.v,
      width: 151.h,
      margin: EdgeInsets.only(top: 13.v),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 19.v),
                  Text(
                    "Miguel",
                    style: CustomTextStyles.sFProOnError,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "Neat, Fast and reliable",
                    style: CustomTextStyles.labelMediumOnError,
                  ),
                  SizedBox(height: 2.v),
                  CustomRatingBar(
                    ignoreGestures: true,
                    initialRating: 0,
                    itemSize: 12,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse3,
            height: 45.adaptSize,
            width: 45.adaptSize,
            radius: BorderRadius.circular(
              22.h,
            ),
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 1.v),
          ),
        ],
      ),
    );
  }
}
