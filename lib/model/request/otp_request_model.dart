class OtpRequestModel {
  String? phone;
  String? otp;
  String? encryptedOtp;
  int? type;
  String? email;
  String? password;

  OtpRequestModel(
      {this.phone,
        this.otp,
        this.encryptedOtp,
        this.type,
        this.email,
        this.password});

  OtpRequestModel.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    otp = json['otp'];
    encryptedOtp = json['encrypted_otp'];
    type = json['type'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phone'] = this.phone;
    data['otp'] = this.otp;
    data['encrypted_otp'] = this.encryptedOtp;
    data['type'] = this.type;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}

