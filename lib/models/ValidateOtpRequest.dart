class ValidateOtpRequest {
  String? phoneNumber;
  String? countryCode;
  String? otpNumber;

  ValidateOtpRequest({this.phoneNumber, this.countryCode, this.otpNumber});

  ValidateOtpRequest.fromJson(Map<String, dynamic> json) {
    phoneNumber = json['phoneNumber'];
    countryCode = json['countryCode'];
    otpNumber = json['otpNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['phoneNumber'] = phoneNumber;
    data['countryCode'] = countryCode;
    data['otpNumber'] = otpNumber;
    return data;
  }
}
