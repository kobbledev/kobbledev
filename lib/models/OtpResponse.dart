class OtpResponse {
  int? status;
  String? message;
  int? isUserAlreadtRegistered;

  OtpResponse({this.status, this.message, this.isUserAlreadtRegistered});

  OtpResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    isUserAlreadtRegistered = json['isUserAlreadtRegistered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['isUserAlreadtRegistered'] = this.isUserAlreadtRegistered;
    return data;
  }
}
