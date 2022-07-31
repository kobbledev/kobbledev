class LoginRequest {
  String? phoneNumber;
  String? countryCode;
  String? otpNumber;

  LoginRequest({this.phoneNumber, this.countryCode, this.otpNumber});

  LoginRequest.fromJson(Map<String, dynamic> json) {
    phoneNumber = json['phoneNumber'];
    countryCode = json['countryCode'];
    otpNumber = json['otpNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phoneNumber'] = phoneNumber;
    data['countryCode'] = countryCode;
    data['otpNumber'] = otpNumber;
    return data;
  }
}
