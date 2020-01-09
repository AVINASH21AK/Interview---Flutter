/* 

----> https://app.quicktype.io/

 */


import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
    String success;
    String status;
    String message;
    LoginData data;

    LoginResponse({
        this.success,
        this.status,
        this.message,
        this.data,
    });

    factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        success: json["success"] == null ? null : json["success"],
        status: json["status"] == null ? null : json["status"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : LoginData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "status": status == null ? null : status,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
    };
}

class LoginData {
    String token;
    String id;
    String name;
    String phoneNumber;
    String status;
    String userType;

    LoginData({
        this.token,
        this.id,
        this.name,
        this.phoneNumber,
        this.status,
        this.userType,
    });

    factory LoginData.fromJson(Map<String, dynamic> json) => LoginData(
        token: json["token"] == null ? null : json["token"],
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        phoneNumber: json["phone_number"] == null ? null : json["phone_number"],
        status: json["status"] == null ? null : json["status"],
        userType: json["user_type"] == null ? null : json["user_type"],
    );

    Map<String, dynamic> toJson() => {
        "token": token == null ? null : token,
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "phone_number": phoneNumber == null ? null : phoneNumber,
        "status": status == null ? null : status,
        "user_type": userType == null ? null : userType,
    };
}
