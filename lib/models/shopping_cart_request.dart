class ShoppingCartRequest {
  String? cardType;
  String? cardPrice;
  String? qrCodeType;
  String? qrCodeName;
  String? styleName;
  String? fontName;
  String? addressId;
  String? addressName;
  String? addressStreet;
  String? addressCity;
  String? addressState;
  String? addressPincode;
  String? addressCountry;
  String? addressContactNumber;

  ShoppingCartRequest(
      {
        this.cardType,
        this.cardPrice,
        this.qrCodeType,
        this.qrCodeName,
        this.styleName,
        this.fontName,
        this.addressId,
        this.addressName,
        this.addressStreet,
        this.addressCity,
        this.addressState,
        this.addressPincode,
        this.addressCountry,
        this.addressContactNumber});

  ShoppingCartRequest.fromJson(Map<String, dynamic> json) {

    cardType = json['cardType'];
    cardPrice = json['cardPrice'];
    qrCodeType = json['qrCodeType'];
    qrCodeName = json['qrCodeName'];
    styleName = json['styleName'];
    fontName = json['fontName'];
    addressId = json['addressId'];
    addressName = json['addressName'];
    addressStreet = json['addressStreet'];
    addressCity = json['addressCity'];
    addressState = json['addressState'];
    addressPincode = json['addressPincode'];
    addressCountry = json['addressCountry'];
    addressContactNumber = json['addressContactNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cardType'] = cardType;
    data['cardPrice'] = cardPrice;
    data['qrCodeType'] = qrCodeType;
    data['qrCodeName'] = qrCodeName;
    data['styleName'] = styleName;
    data['fontName'] = fontName;
    data['addressId'] = addressId;
    data['addressName'] = addressName;
    data['addressStreet'] = addressStreet;
    data['addressCity'] = addressCity;
    data['addressState'] = addressState;
    data['addressPincode'] = addressPincode;
    data['addressCountry'] = addressCountry;
    data['addressContactNumber'] = addressContactNumber;
    return data;
  }
}