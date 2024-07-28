import 'package:flutter/material.dart';import 'package:handyman_service_appv2/core/app_export.dart';import 'package:handyman_service_appv2/widgets/custom_elevated_button.dart';import 'package:table_calendar/table_calendar.dart';import 'package:handyman_service_appv2/presentation/categories_plumbing_select_available_handyman_bottomsheet/categories_plumbing_select_available_handyman_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class CategoriesPlumbingSelectAvailableHandymanOneBottomsheet extends StatelessWidget {CategoriesPlumbingSelectAvailableHandymanOneBottomsheet({Key? key}) : super(key: key);

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

DateTime focusedDay = DateTime.now();

RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 30.v), decoration: AppDecoration.fillOnError.copyWith(borderRadius: BorderRadiusStyle.customBorderTL30), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 4.v), Padding(padding: EdgeInsets.symmetric(horizontal: 51.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 24.adaptSize, width: 24.adaptSize, onTap: () {onTapImgClose(context);}), Padding(padding: EdgeInsets.only(top: 4.v), child: Text("December 2023", style: theme.textTheme.titleMedium)), CustomImageView(imagePath: ImageConstant.imgCloseBlack900, height: 24.adaptSize, width: 24.adaptSize)])), SizedBox(height: 2.v), _buildCalendarSection(context), SizedBox(height: 6.v), Text("Select Schedule", style: theme.textTheme.titleMedium), SizedBox(height: 23.v), Padding(padding: EdgeInsets.only(left: 44.h, right: 54.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: 84.h, padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 9.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder17), child: Text("09:00AM", style: CustomTextStyles.titleSmallOnError)), Spacer(flex: 43), Padding(padding: EdgeInsets.only(top: 9.v, bottom: 10.v), child: Text("10:00AM", style: theme.textTheme.titleSmall)), Spacer(flex: 56), Padding(padding: EdgeInsets.only(top: 9.v, bottom: 10.v), child: Text("11:00AM", style: theme.textTheme.titleSmall))])), SizedBox(height: 23.v), Padding(padding: EdgeInsets.symmetric(horizontal: 54.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("12:00PM", style: theme.textTheme.titleSmall), Spacer(flex: 50), Text("01:00PM", style: theme.textTheme.titleSmall), Spacer(flex: 50), Text("02:00PM", style: theme.textTheme.titleSmall)])), SizedBox(height: 34.v), Padding(padding: EdgeInsets.symmetric(horizontal: 54.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("03:00PM", style: theme.textTheme.titleSmall), Spacer(flex: 50), Text("04:00PM", style: theme.textTheme.titleSmall), Spacer(flex: 50), Text("05:00PM", style: theme.textTheme.titleSmall)])), SizedBox(height: 46.v), CustomElevatedButton(text: "Continue", margin: EdgeInsets.symmetric(horizontal: 23.h), buttonStyle: CustomButtonStyles.fillGray, buttonTextStyle: CustomTextStyles.titleMediumOnError, onPressed: () {onTapContinue(context);})])); } 
/// Section Widget
Widget _buildCalendarSection(BuildContext context) { return Container(margin: EdgeInsets.only(left: 1.h), padding: EdgeInsets.all(23.h), decoration: AppDecoration.fillOnError.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 17.v), SizedBox(height: 274.v, width: 340.h, child: TableCalendar(locale: 'en_US', firstDay: DateTime(DateTime.now().year - 5), lastDay: DateTime(DateTime.now().year + 5), calendarFormat: CalendarFormat.month, rangeSelectionMode: rangeSelectionMode, startingDayOfWeek: StartingDayOfWeek.monday, headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true), calendarStyle: CalendarStyle(outsideDaysVisible: false, isTodayHighlighted: true, todayTextStyle: TextStyle(color: appTheme.black900, fontFamily: 'Inter', fontWeight: FontWeight.w400), todayDecoration: BoxDecoration(border: Border.all(color: appTheme.blueGray10001, width: 0.77.h))), daysOfWeekStyle: DaysOfWeekStyle(weekdayStyle: TextStyle(color: appTheme.black900, fontFamily: 'Inter', fontWeight: FontWeight.w600)), headerVisible: false, rowHeight: 49.34.adaptSize, focusedDay: focusedDay, rangeStartDay: rangeStart, rangeEndDay: rangeEnd, onDaySelected: (selectedDay, focusedDay) {}, onRangeSelected: (start, end, focusedDay) {}, onPageChanged: (focusedDay) {}))])); } 

/// Navigates back to the previous screen.
onTapImgClose(BuildContext context) { Navigator.pop(context); } 

/// Shows a modal bottom sheet with [CategoriesPlumbingSelectAvailableHandymanBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapContinue(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>CategoriesPlumbingSelectAvailableHandymanBottomsheet(),isScrollControlled: true); } 
 }
