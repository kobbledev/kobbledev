class signupRequest {
  String? phoneNumber;
  String? countryCode;
  String? otpNumber;
  String? firstName;
  String? lastName;
  String? email;

  signupRequest(
      {this.phoneNumber,
        this.countryCode,
        this.otpNumber,
        this.firstName,
        this.lastName,
        this.email});

  signupRequest.fromJson(Map<String, dynamic> json) {
    phoneNumber = json['phoneNumber'];
    countryCode = json['countryCode'];
    otpNumber = json['otpNumber'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phoneNumber'] = this.phoneNumber;
    data['countryCode'] = this.countryCode;
    data['otpNumber'] = this.otpNumber;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    return data;
  }
}
