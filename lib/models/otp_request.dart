class OtpRequest {
  String? phoneNumber;
  String? countryCode;

  OtpRequest({this.phoneNumber, this.countryCode});

  OtpRequest.fromJson(Map<String, dynamic> json) {
    phoneNumber = json['phoneNumber'];
    countryCode = json['countryCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['phoneNumber'] = phoneNumber;
    data['countryCode'] = countryCode;
    return data;
  }
}