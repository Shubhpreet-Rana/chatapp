class ProfilePostModel {
  String? name;
  String? countryCode;
  String? phoneNumber;
  String? dob;
  String? gender;
  String? martialStatus;
  String? relationShip;
  String? bookingUpdate;

  ProfilePostModel(
      {this.name,
        this.countryCode,
        this.phoneNumber,
        this.dob,
        this.gender,
        this.martialStatus,
        this.relationShip,
        this.bookingUpdate});

  ProfilePostModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    countryCode = json['countryCode'];
    phoneNumber = json['phoneNumber'];
    dob = json['dob'];
    gender = json['gender'];
    martialStatus = json['maritialStaus'];
    relationShip = json['relationShip'];
    bookingUpdate = json['bookingUpdate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['countryCode'] = this.countryCode;
    data['phoneNumber'] = this.phoneNumber;
    data['dob'] = this.dob;
    data['gender'] = this.gender;
    data['maritialStaus'] = this.martialStatus;
    data['relationShip'] = this.relationShip;
    data['bookingUpdate'] = this.bookingUpdate;
    return data;
  }
}

