import 'package:flutter/material.dart';
import 'package:handyman_service_appv2/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Screen One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Screen Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Screen Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingScreenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Screen Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingScreenFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login (First Time User)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginFirstTimeUserScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create an account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createAnAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create an account (Filled)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createAnAccountFilledScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Confirm email",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.confirmEmailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Confirm email (Filled)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.confirmEmailFilledScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login (Filled)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginFilledScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forget Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forget Password (Filled)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgetPasswordFilledScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Enter OTP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.enterOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Enter OTP (Filled)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.enterOtpFilledScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reset Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reset Password One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.resetPasswordOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home with keyboard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeWithKeyboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Categories/Plumbing",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.categoriesPlumbingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Categories/Plumbing/Select available handyman Two - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .categoriesPlumbingSelectAvailableHandymanTwoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Messages/Call",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messagesCallScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Messages/Chat One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messagesChatOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Privacy Policy",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Terms of use",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.termsOfUseScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Help ",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.helpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payments",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
