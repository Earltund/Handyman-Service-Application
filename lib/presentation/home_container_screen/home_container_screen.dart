import 'package:flutter/material.dart';import 'package:handyman_service_appv2/core/app_export.dart';import 'package:handyman_service_appv2/presentation/home_page/home_page.dart';import 'package:handyman_service_appv2/presentation/messages_chat_page/messages_chat_page.dart';import 'package:handyman_service_appv2/presentation/profile_page/profile_page.dart';import 'package:handyman_service_appv2/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {HomeContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray5001, body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: _buildBottomBar(context)))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.Bookings: return AppRoutes.messagesChatPage; case BottomBarEnum.Cart: return "/"; case BottomBarEnum.Profile: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homePage: return HomePage(); case AppRoutes.messagesChatPage: return MessagesChatPage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
 }
