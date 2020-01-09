import 'package:flutter/material.dart';
import 'package:flutter_demo/api/LoginModel.dart';
import 'package:flutter_demo/api/LoginResponse.dart';
import 'package:flutter_demo/utils/ApiEndpoints.dart';
import 'package:flutter_demo/utils/Constant.dart';
import 'package:flutter_demo/utils/RestClient.dart';
import 'package:dio/dio.dart';


class ActHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  
    return ActHomeState();
  }
  
}


class ActHomeState extends State<ActHome>  with Constant {
  

  String strTAG = 'ActHomeState';

  //-- Global Values which are created once only - HOT RELOAD WILL NOT WORK IF CHANGES MADE
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool loading = false;
  bool boolNoInternetFound = false;

  
  @override
  void initState() {
    super.initState();
    apiNotificationList();
  }

  
  @override
  Widget build(BuildContext context) {
    setConstantContext(context);


    return Scaffold(
      //--- To Avoid TextField hide when keyboard opens  -- Difine for Gload for All Pages
      resizeToAvoidBottomPadding: false,

      key: _scaffoldKey,

      appBar: new AppBar(title: new Text("Home"),),
  
      drawer: new Container(
        color: Colors.green,
      ),

      body: new Container(
        color: Colors.blue,
      ),
    );
  }



  apiNotificationList() async {

    LoginModel loginModel = new LoginModel();
    loginModel.password = "39836163";
    loginModel.deviceName = "";
    loginModel.modelName = "";
    loginModel.deviceToken = "66EDDF532AE6124C1A4696B222B3D1F871483F3E0BA321991BD047A1A33360D2";
    loginModel.osVersion = "";
    loginModel.phoneNumber = "9409322191";
    loginModel.uuid = "";
    loginModel.ip = "";
    loginModel.deviceType = "Android";
    loginModel.countryCode = "+91";
  

    String data = loginModelToJson(loginModel);

    Response response = await RestClient.postData(ApiEndpoints.apiLogin, data);
  
    
    printLog(strTAG, ApiEndpoints.apiLogin);
    printLog(strTAG, data);

    if (response.statusCode == 200) {
      LoginResponse loginResponse = loginResponseFromJson(response.toString());

      printLog(strTAG, "---------------------------------");
      printLog(strTAG, "-----------m-------------"+loginResponse.message);
      printLog(strTAG, "---------------------------------");

      showInSnackBar(loginResponse.message);

    } else {
      printLog(strTAG, "conErrorSomethingWentWrong");
    }
  } 


  
  void showInSnackBar(String value) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(
        value,
        style: TextStyle(
          color: Color(clrPrimary),
          fontSize: 16,
        ),
      ),
      backgroundColor: Colors.black,
      duration: Duration(seconds: 3),
    ));
  }

}