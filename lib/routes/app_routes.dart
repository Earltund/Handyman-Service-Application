import 'package:flutter/material.dart';
import 'package:handyman_service_appv2/presentation/splash_screen/splash_screen.dart';
import 'package:handyman_service_appv2/presentation/onboarding_screen_one_screen/onboarding_screen_one_screen.dart';
import 'package:handyman_service_appv2/presentation/onboarding_screen_two_screen/onboarding_screen_two_screen.dart';
import 'package:handyman_service_appv2/presentation/onboarding_screen_three_screen/onboarding_screen_three_screen.dart';
import 'package:handyman_service_appv2/presentation/onboarding_screen_four_screen/onboarding_screen_four_screen.dart';
import 'package:handyman_service_appv2/presentation/login_first_time_user_screen/login_first_time_user_screen.dart';
import 'package:handyman_service_appv2/presentation/create_an_account_screen/create_an_account_screen.dart';
import 'package:handyman_service_appv2/presentation/create_an_account_filled_screen/create_an_account_filled_screen.dart';
import 'package:handyman_service_appv2/presentation/confirm_email_screen/confirm_email_screen.dart';
import 'package:handyman_service_appv2/presentation/confirm_email_filled_screen/confirm_email_filled_screen.dart';
import 'package:handyman_service_appv2/presentation/login_screen/login_screen.dart';
import 'package:handyman_service_appv2/presentation/login_filled_screen/login_filled_screen.dart';
import 'package:handyman_service_appv2/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:handyman_service_appv2/presentation/forget_password_filled_screen/forget_password_filled_screen.dart';
import 'package:handyman_service_appv2/presentation/enter_otp_screen/enter_otp_screen.dart';
import 'package:handyman_service_appv2/presentation/enter_otp_filled_screen/enter_otp_filled_screen.dart';
import 'package:handyman_service_appv2/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:handyman_service_appv2/presentation/reset_password_one_screen/reset_password_one_screen.dart';
import 'package:handyman_service_appv2/presentation/home_container_screen/home_container_screen.dart';
import 'package:handyman_service_appv2/presentation/home_with_keyboard_screen/home_with_keyboard_screen.dart';
import 'package:handyman_service_appv2/presentation/categories_plumbing_screen/categories_plumbing_screen.dart';
import 'package:handyman_service_appv2/presentation/categories_plumbing_select_available_handyman_two_tab_container_screen/categories_plumbing_select_available_handyman_two_tab_container_screen.dart';
import 'package:handyman_service_appv2/presentation/messages_call_screen/messages_call_screen.dart';
import 'package:handyman_service_appv2/presentation/messages_chat_one_screen/messages_chat_one_screen.dart';
import 'package:handyman_service_appv2/presentation/account_screen/account_screen.dart';
import 'package:handyman_service_appv2/presentation/notification_screen/notification_screen.dart';
import 'package:handyman_service_appv2/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:handyman_service_appv2/presentation/terms_of_use_screen/terms_of_use_screen.dart';
import 'package:handyman_service_appv2/presentation/help_screen/help_screen.dart';
import 'package:handyman_service_appv2/presentation/payments_screen/payments_screen.dart';
import 'package:handyman_service_appv2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreenOneScreen =
      '/onboarding_screen_one_screen';

  static const String onboardingScreenTwoScreen =
      '/onboarding_screen_two_screen';

  static const String onboardingScreenThreeScreen =
      '/onboarding_screen_three_screen';

  static const String onboardingScreenFourScreen =
      '/onboarding_screen_four_screen';

  static const String loginFirstTimeUserScreen =
      '/login_first_time_user_screen';

  static const String createAnAccountScreen = '/create_an_account_screen';

  static const String createAnAccountFilledScreen =
      '/create_an_account_filled_screen';

  static const String confirmEmailScreen = '/confirm_email_screen';

  static const String confirmEmailFilledScreen = '/confirm_email_filled_screen';

  static const String loginScreen = '/login_screen';

  static const String loginFilledScreen = '/login_filled_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String forgetPasswordFilledScreen =
      '/forget_password_filled_screen';

  static const String enterOtpScreen = '/enter_otp_screen';

  static const String enterOtpFilledScreen = '/enter_otp_filled_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordOneScreen = '/reset_password_one_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String homeWithKeyboardScreen = '/home_with_keyboard_screen';

  static const String categoriesPlumbingScreen = '/categories_plumbing_screen';

  static const String categoriesPlumbingSelectAvailableHandymanFourPage =
      '/categories_plumbing_select_available_handyman_four_page';

  static const String categoriesPlumbingSelectAvailableHandymanTwoPage =
      '/categories_plumbing_select_available_handyman_two_page';

  static const String
      categoriesPlumbingSelectAvailableHandymanTwoTabContainerScreen =
      '/categories_plumbing_select_available_handyman_two_tab_container_screen';

  static const String messagesCallScreen = '/messages_call_screen';

  static const String messagesChatPage = '/messages_chat_page';

  static const String messagesChatOneScreen = '/messages_chat_one_screen';

  static const String accountScreen = '/account_screen';

  static const String profilePage = '/profile_page';

  static const String notificationScreen = '/notification_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String termsOfUseScreen = '/terms_of_use_screen';

  static const String helpScreen = '/help_screen';

  static const String paymentsScreen = '/payments_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingScreenOneScreen: (context) => OnboardingScreenOneScreen(),
    onboardingScreenTwoScreen: (context) => OnboardingScreenTwoScreen(),
    onboardingScreenThreeScreen: (context) => OnboardingScreenThreeScreen(),
    onboardingScreenFourScreen: (context) => OnboardingScreenFourScreen(),
    loginFirstTimeUserScreen: (context) => LoginFirstTimeUserScreen(),
    createAnAccountScreen: (context) => CreateAnAccountScreen(),
    createAnAccountFilledScreen: (context) => CreateAnAccountFilledScreen(),
    confirmEmailScreen: (context) => ConfirmEmailScreen(),
    confirmEmailFilledScreen: (context) => ConfirmEmailFilledScreen(),
    loginScreen: (context) => LoginScreen(),
    loginFilledScreen: (context) => LoginFilledScreen(),
    forgetPasswordScreen: (context) => ForgetPasswordScreen(),
    forgetPasswordFilledScreen: (context) => ForgetPasswordFilledScreen(),
    enterOtpScreen: (context) => EnterOtpScreen(),
    enterOtpFilledScreen: (context) => EnterOtpFilledScreen(),
    resetPasswordScreen: (context) => ResetPasswordScreen(),
    resetPasswordOneScreen: (context) => ResetPasswordOneScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    homeWithKeyboardScreen: (context) => HomeWithKeyboardScreen(),
    categoriesPlumbingScreen: (context) => CategoriesPlumbingScreen(),
    categoriesPlumbingSelectAvailableHandymanTwoTabContainerScreen: (context) =>
        CategoriesPlumbingSelectAvailableHandymanTwoTabContainerScreen(),
    messagesCallScreen: (context) => MessagesCallScreen(),
    messagesChatOneScreen: (context) => MessagesChatOneScreen(),
    accountScreen: (context) => AccountScreen(),
    notificationScreen: (context) => NotificationScreen(),
    privacyPolicyScreen: (context) => PrivacyPolicyScreen(),
    termsOfUseScreen: (context) => TermsOfUseScreen(),
    helpScreen: (context) => HelpScreen(),
    paymentsScreen: (context) => PaymentsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
