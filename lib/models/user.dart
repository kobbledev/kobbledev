class User {
  final int id;
  final String username;
  final String password;
  final String firstName;
  final String lastName;
  final String mobileNumber;
  final String email;
  final String otp;
  final String device;
  final int userId;
  final String createdAt;
  final String updatedAt;
  final bool isMessageSent;
  bool isOnboarding;
  // UserAddress userAddress;
  final bool active;

  User({
    required this.id,
    required this.username,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.mobileNumber,
    required this.email,
    required this.otp,
    required this.device,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
    required this.isMessageSent,
    required this.isOnboarding,
    required this.active,
  });

  factory User.fromJSON(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      username: json['username'] as String,
      password: json['password'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      mobileNumber: json['mobileNumber'] as String,
      email: json['email'] as String,
      otp: json['otp'] as String,
      device: json["device"] as String,
      userId: json["userId"] as int,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      isMessageSent: json["isMessageSent"] as bool,
      isOnboarding: json["isOnboarding"] as bool,
      active: json['active'] as bool);
  // userAddress: json['userAddress'] != null? UserAddress.fromJSON(json['userAddress']): "";
  //     ?  UserAddress.fromJSON(json['userAddress'])
  //     : null;,);
  // userAddress: json['userAddress'] != null
  //     ?  UserAddress.fromJSON(json['userAddress'])
  //     : null;
  // userFacilities: List<UserFacilities>.from(json["userFacilities"].map((x) => UserFacilities.fromJson(x))),
  //  active: json['active'] as bool,);
}

class UserAddress {
  final int id;
  final int userId;
  final String address;
  final String street;
  final String city;
  final String state;
  final String country;
  final String pinCode;
  final String createdAt;
  final String updatedAt;

  UserAddress(
      {required this.id,
      required this.userId,
      required this.address,
      required this.street,
      required this.city,
      required this.state,
      required this.country,
      required this.pinCode,
      required this.createdAt,
      required this.updatedAt});

  factory UserAddress.fromJSON(Map<String, dynamic> json) => UserAddress(
      id: json['id'] as int,
      userId: json['userId'] as int,
      address: json['address'] as String,
      street: json['street'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      pinCode: json['pinCode'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String);
}

// this is basic min details of base user class

class UserDetails {
  String firstname;
  String lastname;
  String token;
  String username;
  int userId;
  bool showAlert = false;

  UserDetails(
    this.firstname,
    this.lastname,
    this.token,
    this.username,
    this.userId,
  );

  factory UserDetails.fromJSON(Map<String, dynamic> json) {
    String firstname = json['firstname'] as String;
    String lastname = json['lastname'] as String;
    String token = json['token'] as String;
    String username = json['username'] as String;
    int userId = json['userId'] as int;
    return UserDetails(
      firstname,
      lastname,
      token,
      username,
      userId,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstname'] = firstname;
    data['lastname'] = lastname;
    data['token'] = token;

    data['userId'] = userId;
    return data;
  }
}


// class UserDetails extends DsResponse {
//   User user;
//   final String message;
//   final String token;

//   UserDetails({this.user, this.message, this.token});

//   factory UserDetails.fronJSON(Map<String, dynamic> json) => UserDetails(
//       user: User.fromJSON(json['User']),
//       message: json['message'] as String,
//       token: json['token'] as String);
// }
