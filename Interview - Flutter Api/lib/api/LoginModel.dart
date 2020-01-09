/* 

----> https://app.quicktype.io/

 */

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    String password;
    String deviceName;
    String modelName;
    String deviceToken;
    String osVersion;
    String phoneNumber;
    String uuid;
    String ip;
    String deviceType;
    String countryCode;

    LoginModel({
        this.password,
        this.deviceName,
        this.modelName,
        this.deviceToken,
        this.osVersion,
        this.phoneNumber,
        this.uuid,
        this.ip,
        this.deviceType,
        this.countryCode,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        password: json["password"] == null ? null : json["password"],
        deviceName: json["device_name"] == null ? null : json["device_name"],
        modelName: json["model_name"] == null ? null : json["model_name"],
        deviceToken: json["device_token"] == null ? null : json["device_token"],
        osVersion: json["os_version"] == null ? null : json["os_version"],
        phoneNumber: json["phone_number"] == null ? null : json["phone_number"],
        uuid: json["uuid"] == null ? null : json["uuid"],
        ip: json["ip"] == null ? null : json["ip"],
        deviceType: json["device_type"] == null ? null : json["device_type"],
        countryCode: json["country_code"] == null ? null : json["country_code"],
    );

    Map<String, dynamic> toJson() => {
        "password": password == null ? null : password,
        "device_name": deviceName == null ? null : deviceName,
        "model_name": modelName == null ? null : modelName,
        "device_token": deviceToken == null ? null : deviceToken,
        "os_version": osVersion == null ? null : osVersion,
        "phone_number": phoneNumber == null ? null : phoneNumber,
        "uuid": uuid == null ? null : uuid,
        "ip": ip == null ? null : ip,
        "device_type": deviceType == null ? null : deviceType,
        "country_code": countryCode == null ? null : countryCode,
    };
}
