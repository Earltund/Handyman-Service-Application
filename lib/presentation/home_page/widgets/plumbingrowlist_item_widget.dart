import 'package:flutter/material.dart';
import 'package:handyman_service_appv2/core/app_export.dart';

// ignore: must_be_immutable
class PlumbingrowlistItemWidget extends StatelessWidget {
  PlumbingrowlistItemWidget({
    Key? key,
    this.onTapPlumbingRow,
    this.onTapNext,
  }) : super(
          key: key,
        );

  VoidCallback? onTapPlumbingRow;

  VoidCallback? onTapNext;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.h,
      child: GestureDetector(
        onTap: () {
          onTapPlumbingRow!.call();
        },
        child: Container(
          decoration: AppDecoration.fillBlueA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 22.v),
                child: Text(
                  "Plumbing",
                  style: CustomTextStyles.labelLargeOnError_1,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgQrcode,
                height: 59.v,
                width: 78.h,
                margin: EdgeInsets.only(
                  left: 6.h,
                  top: 1.v,
                ),
                onTap: () {
                  onTapNext!.call();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
