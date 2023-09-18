class ReviewResponseModel {
  String? message;
  int? statusCode;
  List<ReviewResult>? result;

  ReviewResponseModel({this.message, this.statusCode, this.result});

  ReviewResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    statusCode = json['status_code'];
    if (json['result'] != null) {
      result = <ReviewResult>[];
      json['result'].forEach((v) {
        result!.add(new ReviewResult.fromJson(v));
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

class ReviewResult {
  int? id;
  int? userId;
  int? hotelId;
  int? ratings;
  String? comments;
  String? tags;
  String? hotelImage;
  String? createdAt;
  String? updatedAt;
  String? name;

  ReviewResult(
      {this.id,
        this.userId,
        this.hotelId,
        this.ratings,
        this.comments,
        this.tags,
        this.hotelImage,
        this.createdAt,
        this.updatedAt,
        this.name});

  ReviewResult.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    hotelId = json['hotel_id'];
    ratings = json['ratings'];
    comments = json['comments'];
    tags = json['tags'];
    hotelImage = json['hotel_image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['hotel_id'] = this.hotelId;
    data['ratings'] = this.ratings;
    data['comments'] = this.comments;
    data['tags'] = this.tags;
    data['hotel_image'] = this.hotelImage;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['name'] = this.name;
    return data;
  }
}