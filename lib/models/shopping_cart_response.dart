class ShoppingCartResponse {
  int? status;
  String? message;
  CardDetails? cardDetails;

  ShoppingCartResponse({this.status, this.message, this.cardDetails});

  ShoppingCartResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    cardDetails = json['cardDetails'] != null
        ? new CardDetails.fromJson(json['cardDetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = status;
    data['message'] = message;
    if (cardDetails != null) {
      data['cardDetails'] = cardDetails!.toJson();
    }
    return data;
  }
}

class CardDetails {
  String? cardType;
  String? cardPrice;
  String? transactionId;
  String? qrCodeType;
  String? qrCodeName;
  String? styleName;
  String? fontName;
  String? logoPath;
  String? qrCodePath;
  String? userQrCode;
  String? userId;
  String? addressId;
  String? addressName;
  String? addressStreet;
  String? addressCity;
  String? addressState;
  String? addressPincode;
  String? addressCountry;
  String? addressContactNumber;
  String? orderId;
  String? orderStatus;
  String? orderStatusText;
  String? createdAt;
  String? sId;
  String? updatedAt;
  String? id;

  CardDetails(
      {this.cardType,
        this.cardPrice,
        this.transactionId,
        this.qrCodeType,
        this.qrCodeName,
        this.styleName,
        this.fontName,
        this.logoPath,
        this.qrCodePath,
        this.userQrCode,
        this.userId,
        this.addressId,
        this.addressName,
        this.addressStreet,
        this.addressCity,
        this.addressState,
        this.addressPincode,
        this.addressCountry,
        this.addressContactNumber,
        this.orderId,
        this.orderStatus,
        this.orderStatusText,
        this.createdAt,
        this.sId,
        this.updatedAt,
        this.id});

  CardDetails.fromJson(Map<String, dynamic> json) {
    cardType = json['cardType'];
    cardPrice = json['cardPrice'];
    transactionId = json['transactionId'];
    qrCodeType = json['qrCodeType'];
    qrCodeName = json['qrCodeName'];
    styleName = json['styleName'];
    fontName = json['fontName'];
    logoPath = json['logoPath'];
    qrCodePath = json['qrCodePath'];
    userQrCode = json['userQrCode'];
    userId = json['userId'];
    addressId = json['addressId'];
    addressName = json['addressName'];
    addressStreet = json['addressStreet'];
    addressCity = json['addressCity'];
    addressState = json['addressState'];
    addressPincode = json['addressPincode'];
    addressCountry = json['addressCountry'];
    addressContactNumber = json['addressContactNumber'];
    orderId = json['orderId'];
    orderStatus = json['orderStatus'];
    orderStatusText = json['orderStatusText'];
    createdAt = json['created_at'];
    sId = json['_id'];
    updatedAt = json['updated_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cardType'] = cardType;
    data['cardPrice'] = cardPrice;
    data['transactionId'] = transactionId;
    data['qrCodeType'] = qrCodeType;
    data['qrCodeName'] = qrCodeName;
    data['styleName'] = styleName;
    data['fontName'] = fontName;
    data['logoPath'] = logoPath;
    data['qrCodePath'] = qrCodePath;
    data['userQrCode'] = userQrCode;
    data['userId'] = userId;
    data['addressId'] = addressId;
    data['addressName'] = addressName;
    data['addressStreet'] = addressStreet;
    data['addressCity'] = addressCity;
    data['addressState'] = addressState;
    data['addressPincode'] = addressPincode;
    data['addressCountry'] = addressCountry;
    data['addressContactNumber'] = addressContactNumber;
    data['orderId'] = orderId;
    data['orderStatus'] = orderStatus;
    data['orderStatusText'] = orderStatusText;
    data['created_at'] = createdAt;
    data['_id'] = sId;
    data['updated_at'] = updatedAt;
    data['id'] = id;
    return data;
  }
}