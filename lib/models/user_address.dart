class AddAddress {
  String? addressName;
  String? addressStreet;
  String? addressCity;
  String? addressState;
  String? addressPincode;
  String? addressCountry;
  String? addressContactNumber;
  int? addressType;

  AddAddress(
      {this.addressName,
        this.addressStreet,
        this.addressCity,
        this.addressState,
        this.addressPincode,
        this.addressCountry,
        this.addressContactNumber,
        this.addressType});

  AddAddress.fromJson(Map<String, dynamic> json) {
    addressName = json['addressName'];
    addressStreet = json['addressStreet'];
    addressCity = json['addressCity'];
    addressState = json['addressState'];
    addressPincode = json['addressPincode'];
    addressCountry = json['addressCountry'];
    addressContactNumber = json['addressContactNumber'];
    addressType = json['addressType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['addressName'] = this.addressName;
    data['addressStreet'] = this.addressStreet;
    data['addressCity'] = this.addressCity;
    data['addressState'] = this.addressState;
    data['addressPincode'] = this.addressPincode;
    data['addressCountry'] = this.addressCountry;
    data['addressContactNumber'] = this.addressContactNumber;
    data['addressType'] = this.addressType;
    return data;
  }
}
