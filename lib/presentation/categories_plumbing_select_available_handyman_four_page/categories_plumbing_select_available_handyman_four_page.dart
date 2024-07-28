import 'package:flutter/material.dart';
import 'package:handyman_service_appv2/core/app_export.dart';
import 'package:handyman_service_appv2/widgets/custom_elevated_button.dart';
import 'package:handyman_service_appv2/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class CategoriesPlumbingSelectAvailableHandymanFourPage extends StatefulWidget {
  const CategoriesPlumbingSelectAvailableHandymanFourPage({Key? key})
      : super(
          key: key,
        );

  @override
  CategoriesPlumbingSelectAvailableHandymanFourPageState createState() =>
      CategoriesPlumbingSelectAvailableHandymanFourPageState();
}

class CategoriesPlumbingSelectAvailableHandymanFourPageState
    extends State<CategoriesPlumbingSelectAvailableHandymanFourPage>
    with
        AutomaticKeepAliveClientMixin<
            CategoriesPlumbingSelectAvailableHandymanFourPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnError,
          child: _buildDiscountAvailable(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDiscountAvailable(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 118.h),
              child: Text(
                "145 Reviews",
                style: theme.textTheme.labelSmall,
              ),
            ),
          ),
          SizedBox(height: 3.v),
          _buildLocation(
            context,
            userAddress: "Hyde Park - W2 2UH",
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 108.h),
            child: _buildFrameEighteen(
              context,
              price: "25",
              startingCost: "Starting cost",
            ),
          ),
          SizedBox(height: 3.v),
          CustomElevatedButton(
            height: 15.v,
            width: 67.h,
            text: "Discount Available",
            margin: EdgeInsets.only(left: 108.h),
            buttonStyle: CustomButtonStyles.fillDeepOrange,
            buttonTextStyle: CustomTextStyles.sFProOnError,
          ),
          SizedBox(height: 41.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 17.v,
            ),
            decoration: AppDecoration.fillYellowA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame17,
                  height: 86.adaptSize,
                  width: 86.adaptSize,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mike’s Plumbing Services",
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 3.v),
                      Row(
                        children: [
                          CustomRatingBar(
                            initialRating: 0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text(
                              "145 Reviews",
                              style: theme.textTheme.labelSmall,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4.v),
                      _buildLocation(
                        context,
                        userAddress: "Hyde Park - W2 2UH",
                      ),
                      SizedBox(height: 4.v),
                      _buildFrameEighteen(
                        context,
                        price: "25",
                        startingCost: "Starting cost",
                      ),
                      SizedBox(height: 3.v),
                      CustomElevatedButton(
                        height: 15.v,
                        width: 67.h,
                        text: "Discount Available",
                        buttonStyle: CustomButtonStyles.fillDeepOrange,
                        buttonTextStyle: CustomTextStyles.sFProOnError,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 17.v,
            ),
            decoration: AppDecoration.fillYellowA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame17,
                  height: 86.adaptSize,
                  width: 86.adaptSize,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mike’s Plumbing Services",
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 3.v),
                      Row(
                        children: [
                          CustomRatingBar(
                            initialRating: 0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text(
                              "145 Reviews",
                              style: theme.textTheme.labelSmall,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4.v),
                      _buildLocation(
                        context,
                        userAddress: "Hyde Park - W2 2UH",
                      ),
                      SizedBox(height: 4.v),
                      _buildFrameEighteen(
                        context,
                        price: "25",
                        startingCost: "Starting cost",
                      ),
                      SizedBox(height: 3.v),
                      CustomElevatedButton(
                        height: 15.v,
                        width: 67.h,
                        text: "Discount Available",
                        buttonStyle: CustomButtonStyles.fillDeepOrange,
                        buttonTextStyle: CustomTextStyles.sFProOnError,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildLocation(
    BuildContext context, {
    required String userAddress,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgSolarMapArrowSquareBold,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 4.h,
            top: 3.v,
          ),
          child: Text(
            userAddress,
            style: CustomTextStyles.labelMediumBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameEighteen(
    BuildContext context, {
    required String price,
    required String startingCost,
  }) {
    return Row(
      children: [
        Text(
          price,
          style: CustomTextStyles.labelMediumOnPrimaryContainer.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(
            startingCost,
            style: theme.textTheme.labelSmall!.copyWith(
              color: appTheme.gray400,
            ),
          ),
        ),
      ],
    );
  }
}
