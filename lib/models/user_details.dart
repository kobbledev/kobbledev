
class UserDetails {
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? countryCode;
  String? fullPhoneNumber;
  String? createdAt;
  String? email;

  UserDetails(
      {this.firstName,
        this.lastName,
        this.phoneNumber,
        this.countryCode,
        this.fullPhoneNumber,
        this.createdAt,
        this.email});

  UserDetails.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    phoneNumber = json['phoneNumber'];
    countryCode = json['countryCode'];
    fullPhoneNumber = json['fullPhoneNumber'];
    createdAt = json['createdAt'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['phoneNumber'] = this.phoneNumber;
    data['countryCode'] = this.countryCode;
    data['fullPhoneNumber'] = this.fullPhoneNumber;
    data['createdAt'] = this.createdAt;
    data['email'] = this.email;
    return data;
  }
}