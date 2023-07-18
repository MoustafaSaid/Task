import 'package:flutter/material.dart';

class ColorManager {
  static Color statusBarColor =HexColor.fromHex("#0F253A");
  static Color primaryColorBlue =HexColor.fromHex("#0A3E6E");
  static Color secondButtonColor =HexColor.fromHex("#F8B100");
  static Color progressBarColor =HexColor.fromHex("#3AB07E");
  static Color secondaryColorBlue =HexColor.fromHex("#8F9BB3");
  static Color greyIconColor =HexColor.fromHex("#C8C8C8");
  static Color starColor =HexColor.fromHex("#D34546");
  static Color doubleArrowColor =HexColor.fromHex("#D4DCEC");
  static Color progressIndicatorColor =HexColor.fromHex("#EEEEEE");
  static Color textGreyColor =HexColor.fromHex("#C8C8C8");
  static Color textGreyColor2 =HexColor.fromHex("#707070");
  static Color teacherColor =HexColor.fromHex("#222B45");
  static Color lightBlackColor =HexColor.fromHex("#191919");
  static Color brownColor =HexColor.fromHex("#464646");
  static Color purbleColor =HexColor.fromHex("#A571E9");
  static Color lightBlackColor2 =HexColor.fromHex("#1E2022");
  static Color blueColor3 =HexColor.fromHex("#264D7D");
  static Color blackColor3 =HexColor.fromHex("#0A0A0A");
  static Color lightBlueColor=HexColor.fromHex("#F7F8FA");
  static Color greenColor=HexColor.fromHex("#3AB07E");
  static Color advertiseFillColorLight=HexColor.fromHex("#FFE5DC");
  static Color lightBlueColor2=HexColor.fromHex("#0A3E6E");
  static Color iconMenuColor=HexColor.fromHex("#FFFFFF");
  static Color playVideoColor=HexColor.fromHex("#E1E1E1");
  static Color couponColor=HexColor.fromHex("#EF686A");
  static Color codingFillColor=HexColor.fromHex("#EDE3FB");
  static Color businessFillColor=HexColor.fromHex("#E1D1E7");
  static Color languagesFillColor=HexColor.fromHex("#D7E6F9");
  static Color businessTextColor=HexColor.fromHex("#730E9B");
  static Color codingTextColor=HexColor.fromHex("#A571E9");
  static Color languagesTextColor=HexColor.fromHex("#3680E0");





  static Color primaryColor = HexColor.fromHex("#0A3E6E");
  static Color grayColor = HexColor.fromHex("#D4D4D4");
  static Color loginColor = HexColor.fromHex("#264D7D");
  static Color indicatorColor = HexColor.fromHex("#F8B100");
  static Color borderColor = HexColor.fromHex("#707070");
  static Color buttonColor = HexColor.fromHex("#F8B100");
  static Color facebookBorderColor = HexColor.fromHex("#3E5B9A");
  static Color twitterBorderColor = HexColor.fromHex("#03A9F4");
  static Color googleBorderColor = HexColor.fromHex("#EB4132");
  static Color inActiveIndicatorColor = HexColor.fromHex("#FDE4A6");
  static Color primary = HexColor.fromHex("#ED9728");
  static Color darkGrey = HexColor.fromHex("#525252");
  static Color grey = HexColor.fromHex("#737477");
  // static Color advertiseFillColor = HexColor.fromHex("#FFE5DC");
  static Color advertiseFillColor = HexColor.fromHex("#F8B100");
  static Color advertiseLogoColor = HexColor.fromHex("#F8B100");
  static Color designFillColor = HexColor.fromHex("#CCF1E0");
  static Color designLogoColor = HexColor.fromHex("#2CCA81");
  static Color advertiseBorderColor = HexColor.fromHex("#F8B100");
  static Color designBorderColor = HexColor.fromHex("#707070");
  static Color cinemaFillColor = HexColor.fromHex("#EDE3FB");
  static Color cinemaLogoColor = HexColor.fromHex("#A571E9");
  static Color cinemaBorderColor = HexColor.fromHex("#C4C4C4");
  static Color newCourses = HexColor.fromHex("#3AB07E");
  static Color cardTagColor = HexColor.fromHex("#E5AC15");
  static Color secondBoxColor = HexColor.fromHex("#84D3F3");
  static Color thirdBoxColor = HexColor.fromHex("F8F8FA");



  static Color lightGrey = HexColor.fromHex("#9E9E9E");
  static Color primaryOpacity70 = HexColor.fromHex("#B3ED9728");

  // new colors
  static Color darkPrimary = HexColor.fromHex("#d17d11");
  static Color grey1 = HexColor.fromHex("#707070");
  static Color grey2 = HexColor.fromHex("#797979");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color error = HexColor.fromHex("#e61f34");
  static Color black= HexColor.fromHex("#000000"); // red color
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
