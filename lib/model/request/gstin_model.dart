class GSTIN {
  String? name;
  String? gst;
  String? phone;
  String? email;
  String? address;

  GSTIN({this.name, this.gst, this.phone, this.email, this.address});

  GSTIN.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    gst = json['gst'];
    phone = json['phone'];
    email = json['email'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['gst'] = this.gst;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['address'] = this.address;
    return data;
  }
}