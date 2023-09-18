class OtpResponseModel {
  String? message;
  int? statusCode;
  OtpResult? result;

  OtpResponseModel({this.message, this.statusCode, this.result});

  OtpResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    statusCode = json['status_code'];
    result =
        json['result'] != null ? new OtpResult.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['status_code'] = this.statusCode;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class OtpResult {
  String? token;
  String? tokenType;
  bool? alreadyRegistered;
  Null? userData;
  int? status;

  OtpResult(
      {this.token,
      this.tokenType,
      this.alreadyRegistered,
      this.userData,
      this.status});

  OtpResult.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    tokenType = json['token_type'];
    alreadyRegistered = json['already_registered'];
    userData = json['user_data'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['token_type'] = this.tokenType;
    data['already_registered'] = this.alreadyRegistered;
    data['user_data'] = this.userData;
    data['status'] = this.status;
    return data;
  }
}
