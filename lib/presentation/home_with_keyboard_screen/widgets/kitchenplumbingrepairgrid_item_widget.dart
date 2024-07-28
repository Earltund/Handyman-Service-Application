import 'package:flutter/material.dart';
import 'package:handyman_service_appv2/core/app_export.dart';

// ignore: must_be_immutable
class KitchenplumbingrepairgridItemWidget extends StatelessWidget {
  const KitchenplumbingrepairgridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage5,
              height: 120.adaptSize,
              width: 120.adaptSize,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.fillOnError,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 106.h,
                    child: Text(
                      "Kitchen Plumbing\nRepair",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Text(
                    "20 - 40",
                    style: theme.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
