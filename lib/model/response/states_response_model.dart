class StatesResponseModel {
  String? message;
  int? statusCode;
  List<StateResult>? result;

  StatesResponseModel({this.message, this.statusCode, this.result});

  StatesResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    statusCode = json['status_code'];
    if (json['result'] != null) {
      result = <StateResult>[];
      json['result'].forEach((v) {
        result!.add(new StateResult.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['status_code'] = this.statusCode;
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StateResult {
  int? id;
  String? stateName;
  String? slug;
  int? countryId;
  String? image;
  String? createdAt;
  String? updatedAt;

  StateResult(
      {this.id,
        this.stateName,
        this.slug,
        this.countryId,
        this.image,
        this.createdAt,
        this.updatedAt});

  StateResult.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    stateName = json['state_name'];
    slug = json['slug'];
    countryId = json['country_id'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['state_name'] = this.stateName;
    data['slug'] = this.slug;
    data['country_id'] = this.countryId;
    data['image'] = this.image;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}