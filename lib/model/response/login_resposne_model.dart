class LoginReposneModel {
  int? status;
  String? message;
  Result? result;

  LoginReposneModel({this.status, this.message, this.result});

  LoginReposneModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  int? otp;
  String? encryptedOtp;

  Result({this.otp, this.encryptedOtp});

  Result.fromJson(Map<String, dynamic> json) {
    otp = json['otp'];
    encryptedOtp = json['encrypted_otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['otp'] = this.otp;
    data['encrypted_otp'] = this.encryptedOtp;
    return data;
  }
}

