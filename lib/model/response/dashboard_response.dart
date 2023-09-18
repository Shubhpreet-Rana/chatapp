class DashBoardResponse {
  String? message;
  int? statusCode;
  DashBoardResult? result;

  DashBoardResponse({this.message, this.statusCode, this.result});

  DashBoardResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    statusCode = json['status_code'];
    result =
    json['result'] != null ? new DashBoardResult.fromJson(json['result']) : null;
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

class DashBoardResult {
  List<CollectionList>? curatedCollection;
  List<CollectionList>? yourkindStay;
  List<CollectionList>? pickyourFavouriteoyo;

  DashBoardResult(
      {this.curatedCollection, this.yourkindStay, this.pickyourFavouriteoyo});

  DashBoardResult.fromJson(Map<String, dynamic> json) {
    if (json['curated_collection'] != null) {
      curatedCollection = <CollectionList>[];
      json['curated_collection'].forEach((v) {
        curatedCollection!.add(new CollectionList.fromJson(v));
      });
    }
    if (json['yourkind_stay'] != null) {
      yourkindStay = <CollectionList>[];
      json['yourkind_stay'].forEach((v) {
        yourkindStay!.add(new CollectionList.fromJson(v));
      });
    }
    if (json['pickyour_favouriteoyo'] != null) {
      pickyourFavouriteoyo = <CollectionList>[];
      json['pickyour_favouriteoyo'].forEach((v) {
        pickyourFavouriteoyo!.add(new CollectionList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.curatedCollection != null) {
      data['curated_collection'] =
          this.curatedCollection!.map((v) => v.toJson()).toList();
    }
    if (this.yourkindStay != null) {
      data['yourkind_stay'] =
          this.yourkindStay!.map((v) => v.toJson()).toList();
    }
    if (this.pickyourFavouriteoyo != null) {
      data['pickyour_favouriteoyo'] =
          this.pickyourFavouriteoyo!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CollectionList {
  String? id;
  String? tittle;
  String? img;

  CollectionList({this.id, this.tittle, this.img});

  CollectionList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tittle = json['tittle'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tittle'] = this.tittle;
    data['img'] = this.img;
    return data;
  }
}