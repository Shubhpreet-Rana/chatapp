class SearchHotelRequest {
  String? search;
  String? dateStart;
  String? dateEnd;
  String? sort;
  String? locality;
  String? category;
  String? priceStart;
  String? priceEnd;
  String? popular;
  List<RoomList>? roomList;

  SearchHotelRequest(
      {this.search,
        this.dateStart,
        this.dateEnd,
        this.sort="",
        this.locality="",
        this.category="",
        this.priceStart="",
        this.priceEnd="",
        this.popular="",
        this.roomList});

  SearchHotelRequest.fromJson(Map<String, dynamic> json) {
    search = json['search'];
    dateStart = json['DateStart'];
    dateEnd = json['DateEnd'];
    sort = json['sort'];
    locality = json['locality'];
    category = json['category'];
    priceStart = json['price_start'];
    priceEnd = json['price_end'];
    popular = json['popular'];
    if (json['room_list'] != null) {
      roomList = <RoomList>[];
      json['room_list'].forEach((v) {
        roomList!.add(new RoomList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['search'] = this.search;
    data['DateStart'] = this.dateStart;
    data['DateEnd'] = this.dateEnd;
    data['sort'] = this.sort;
    data['locality'] = this.locality;
    data['category'] = this.category;
    data['price_start'] = this.priceStart;
    data['price_end'] = this.priceEnd;
    data['popular'] = this.popular;
    if (this.roomList != null) {
      data['room_list'] = this.roomList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RoomList {
  int? adults;
  int? child;

  RoomList({this.adults=0, this.child=0});

  RoomList.fromJson(Map<String, dynamic> json) {
    adults = json['adults'];
    child = json['child'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adults'] = this.adults;
    data['child'] = this.child;
    return data;
  }
}