

import 'package:kobble_dev/models/user_details.dart';

class UserDetailsResponse {
  int? status;
  String? message;
  UserDetails? userDetails;

  UserDetailsResponse({this.status, this.message, this.userDetails});

  UserDetailsResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    userDetails = json['userDetails'] != null
        ? new UserDetails.fromJson(json['userDetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.userDetails != null) {
      data['userDetails'] = this.userDetails!.toJson();
    }
    return data;
  }
}
