import 'dart:io';

import 'package:flutter/material.dart';


class Constant{

  BuildContext context;
    setConstantContext(BuildContext context){
      this.context = context;
  }

  
  /* --------Check Connectivity start--------- */
  Future<bool> checkInternet() async{
    try 
    {
      final result = await InternetAddress.lookup('google.com');
      
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) 
      {
        return true;
      }
      else
      {
        print('--------------TRY ELSE----------------');
        print('--> ${result.isNotEmpty.toString()}');
        return false;
      }

    } 
    on SocketException catch (_) 
    {
      return false;
    }

  }


  
  /* ------ List of Colors --------- */
  int clrPrimary = 0xffc82121;  //363636
  int clrWhite = 0xffffffff;
  int clrWhiteLightes = 0xffefefef;
  int clrWhiteGrey = 0xffada6a6;
  int clrBlack = 0xff000000;
  int clrBlue = 0xff2962ff;
  int clrGreyLight = 0xff606060;
  int clrGreen = 0xff309030;
     //int clrGrayWhite = 0xfffcfcfc;
  int clrGrayWhite = 0xffede8e8;


  /* ------ Size for margin and padding --------- */
  double size_0 = 0.0;
  double size_1 = 1.0;
  double size_2 = 2.0;
  double size_3 = 3.0;
  double size_4 = 4.0;
  double size_5 = 5.0;
  double size_6 = 6.0;
  double size_7 = 7.0;
  double size_8 = 8.0;
  double size_9 = 9.0;
  double size_10 = 10.0 ;
  double size_11 = 11.0 ;
  double size_12 = 12.0 ;
  double size_14 = 14.0;
  double size_15 = 15.0;
  double size_16 = 16.0;
  double size_18 = 18.0;
  double size_20 = 20.0;
  double size_22 = 22.0;
  double size_25 = 25.0;
  double size_30 = 30.0;
  double size_35 = 35.0;
  double size_40 = 40.0;
  double size_45 = 45.0;
  double size_50 = 50.0;
  double size_55 = 55.0;
  double size_60 = 60.0;
  double size_70 = 70.0;
  double size_80 = 80.0;
  double size_100 = 100.0;
  double size_110 = 110.0;
  double size_120 = 120.0;
  double size_150 = 150.0;
  double size_180 = 180.0;
  double size_200 = 200.0;
  double size_250 = 250.0;
  double size_300 = 300.0;
  double size_350 = 350.0;



  /* ------------------ SharedPreference --------------------- */
 //-- User Login Info
  String sharedPrefIsLogin = "IsLogin";
  String sharedPrefUserID = "UserID";
  String sharedPrefUserName = "UserName";
  String sharedPrefUserEmailID = "UserEmailID";
  





  hideKeyboard(BuildContext _context){
     FocusScope.of(_context).requestFocus(new FocusNode());
  }
  
  printLog(String strActivityName, String strMessage){
    print("$strActivityName --> $strMessage");
  }




}



/*------ Color Shades and transparency 
100% - FF
95% - F2
90% - E6
85% - D9
80% - CC
75% - BF
70% - B3
65% - A6
60% - 99
55% - 8C
50% - 80
45% - 73
40% - 66
35% - 59
30% - 4D
25% - 40
20% - 33
15% - 26
10% - 1A
5% - 0D
0% - 00
 
 
 */