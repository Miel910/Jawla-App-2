import 'package:flutter/material.dart';

/////////////////////////////////// Colors /////////////////////////////////////

const primaryColor = Color(0xFFFF6363);
const redColor = Color(0xFFFF6363);
const secondaryColor = Color(0xFFFFA285);
const sandColor = Color(0xFFFFA285);
const greyButtonColor = Color(0xFFDDDDDD);
const greyTextColor = Color(0xFF959595);

///////////////////////////////// Text Styles //////////////////////////////////

const headLineStyle1 = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins');
const headLineStyle2 = TextStyle(
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins');
const headLineStyle3 = TextStyle(
    fontSize: 14,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins');
const headLineStyle4 = TextStyle(
    fontSize: 12,
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins');
const headLineStyle5 = TextStyle(
    fontSize: 11,
    color: greyTextColor,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins');
const headLineStyle6 = TextStyle(
    fontSize: 10,
    color: greyTextColor,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins');
const textFieldStyle = TextStyle(
    fontSize: 12,
    color: greyTextColor,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins');
const buttonStyle = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins');

// LoginPage Text Styles
const loginButtonStyle = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins');
const forgetPasswordStyle = TextStyle(
    fontSize: 14,
    color: greyTextColor,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins');
const haveAccountStyle = TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins');

// ActivityPage Text Styles
const activityTitleStyle = TextStyle(
    fontSize: 30,
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins');
const overviewStyle = TextStyle(
    fontSize: 18,
    color: sandColor,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins');
const activityTitle = TextStyle(
    fontSize: 13,
    color: greyTextColor,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins');

///////////////////////////////// Sized boxes //////////////////////////////////

const height4 = SizedBox(height: 4);
const height8 = SizedBox(height: 8);
const height16 = SizedBox(height: 16);
const height24 = SizedBox(height: 24);
const height32 = SizedBox(height: 32);
const height48 = SizedBox(height: 48);
const height56 = SizedBox(height: 56);
const height64 = SizedBox(height: 64);
const height96 = SizedBox(height: 96);

const width4 = SizedBox(width: 4);
const width8 = SizedBox(width: 8);
const width16 = SizedBox(width: 16);
const width24 = SizedBox(width: 24);
const width32 = SizedBox(width: 32);
const width48 = SizedBox(height: 48);
const width56 = SizedBox(height: 56);

/////////////////////////////////// Layout /////////////////////////////////////

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
