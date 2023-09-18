class HotelList {
  String? message;
  int? statusCode;
  List<Hotel>? hotels;

  HotelList({this.message, this.statusCode, this.hotels});

  HotelList.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    statusCode = json['status_code'];
    if (json['result'] != null) {
      hotels = <Hotel>[];
      json['result'].forEach((v) {
        hotels!.add(new Hotel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['status_code'] = this.statusCode;
    if (this.hotels != null) {
      data['result'] = this.hotels!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Hotel {
  int? id;
  int? vendorId;
  String? hotelAmenities;
  String? roomAmenities;
  int? maxCapacity;
  String? hotelPolicies;
  String? hotelName;
  String? hotelAddress;
  String? ownersName;
  int? mainPhoneNumber;
  String? hotelCity;
  String? country;
  String? state;
  int? zipCode;
  String? mailingAddress;
  String? image;
  String? forAdditionalDetails;
  int? price;
  String? paymentMode;
  String? category;
  Null? latitude;
  Null? longitude;
  Null? deletedAt;
  String? createdAt;
  String? updatedAt;

  Hotel(
      {this.id,
        this.vendorId,
        this.hotelAmenities,
        this.roomAmenities,
        this.maxCapacity,
        this.hotelPolicies,
        this.hotelName,
        this.hotelAddress,
        this.ownersName,
        this.mainPhoneNumber,
        this.hotelCity,
        this.country,
        this.state,
        this.zipCode,
        this.mailingAddress,
        this.image,
        this.forAdditionalDetails,
        this.price,
        this.paymentMode,
        this.category,
        this.latitude,
        this.longitude,
        this.deletedAt,
        this.createdAt,
        this.updatedAt});

  Hotel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vendorId = json['vendor_id'];
    hotelAmenities = json['hotel_amenities'];
    roomAmenities = json['room_amenities'];
    maxCapacity = json['Max_Capacity'];
    hotelPolicies = json['Hotel_Policies'];
    hotelName = json['Hotel_Name'];
    hotelAddress = json['Hotel_Address'];
    ownersName = json['Owners_Name'];
    mainPhoneNumber = json['Main_Phone_Number'];
    hotelCity = json['Hotel_City'];
    country = json['Country'];
    state = json['State'];
    zipCode = json['Zip_Code'];
    mailingAddress = json['Mailing_Address'];
    image = json['Image'];
    forAdditionalDetails = json['For_Additional_Details'];
    price = json['price'];
    paymentMode = json['payment_mode'];
    category = json['category'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['vendor_id'] = this.vendorId;
    data['hotel_amenities'] = this.hotelAmenities;
    data['room_amenities'] = this.roomAmenities;
    data['Max_Capacity'] = this.maxCapacity;
    data['Hotel_Policies'] = this.hotelPolicies;
    data['Hotel_Name'] = this.hotelName;
    data['Hotel_Address'] = this.hotelAddress;
    data['Owners_Name'] = this.ownersName;
    data['Main_Phone_Number'] = this.mainPhoneNumber;
    data['Hotel_City'] = this.hotelCity;
    data['Country'] = this.country;
    data['State'] = this.state;
    data['Zip_Code'] = this.zipCode;
    data['Mailing_Address'] = this.mailingAddress;
    data['Image'] = this.image;
    data['For_Additional_Details'] = this.forAdditionalDetails;
    data['price'] = this.price;
    data['payment_mode'] = this.paymentMode;
    data['category'] = this.category;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}