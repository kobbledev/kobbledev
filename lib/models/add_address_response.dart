class AddAddressResponse {
  int? status;
  String? message;
  UserAddressDetails? userAddressDetails;

  AddAddressResponse({this.status, this.message, this.userAddressDetails});

  AddAddressResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    userAddressDetails = json['userAddressDetails'] != null
        ? new UserAddressDetails.fromJson(json['userAddressDetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.userAddressDetails != null) {
      data['userAddressDetails'] = this.userAddressDetails!.toJson();
    }
    return data;
  }
}

class UserAddressDetails {
  String? userId;
  String? addressId;
  String? createdAt;
  String? sId;
  String? updatedAt;
  String? id;

  UserAddressDetails(
      {this.userId,
        this.addressId,
        this.createdAt,
        this.sId,
        this.updatedAt,
        this.id});

  UserAddressDetails.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    addressId = json['addressId'];
    createdAt = json['created_at'];
    sId = json['_id'];
    updatedAt = json['updated_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['addressId'] = this.addressId;
    data['created_at'] = this.createdAt;
    data['_id'] = this.sId;
    data['updated_at'] = this.updatedAt;
    data['id'] = this.id;
    return data;
  }
}
