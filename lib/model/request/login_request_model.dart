class LoginRequestModel {
  String? phone;
  int? type;

  LoginRequestModel({this.phone, this.type});

  LoginRequestModel.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phone'] = this.phone;
    data['type'] = this.type;
    return data;
  }
}