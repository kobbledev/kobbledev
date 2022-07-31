import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kobble_dev/utils/constants.dart';

import '../../utils/api_list.dart';
import '../models/login_request.dart';
import '../models/login_response.dart';
import '../models/user_details_response.dart';
import '../views/individual_user/login_flow/flow_info.dart';
import 'api_controller.dart';
import 'local_storage.dart';

class Helper {
  static void callLoginApi(BuildContext context, String mobileNo) {
    print('login Response started');

    Map<String, String> headers = {
      Constants.contentType: Constants.applicationJson,
    };

    var request = LoginRequest();
    request.phoneNumber = mobileNo.toString();
    request.countryCode = Constants.countryCode;
    ApiController.postAPI(Apis.login, headers, jsonEncode(request))
        .then((value) {
      print('login Response: ${value.body}');

      if (value.statusCode == 200 || value.statusCode == 201) {
        if (kDebugMode) {
          print('login Response: ${value.body}');
        }
        LoginResponse response = LoginResponse.fromJson(jsonDecode(value.body));
        //  if (response.status == 1){
        // saveTokentoSF(response.token.toString());
        if (response.token != null) {
          LocalStorage.setToken(response.token!);
          getUserDetails(context, response.token!);
        }
        // }
      }
    });
  }

  static void getUserDetails(BuildContext context, String token) {
    Map<String, String> headers = {
      "x-auth": token,
    };

    ApiController.getAPI(Apis.getUserDetails, headers).then((value) {
      if (value.statusCode == 200 || value.statusCode == 201) {
        if (kDebugMode) {
          print('login Response: ${value.body}');
        }

        UserDetailsResponse response =
            UserDetailsResponse.fromJson(jsonDecode(value.body));

        if (response.status == 1) {
          LocalStorage.setUserDetails(response.userDetails!.firstName!,
              response.userDetails!.lastName!, response.userDetails!.email!);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FlowInfo()));
        }
        // if(response.token!=null) {
        //   LocalStorage.setToken(response.token!);
        // }

        // }
      }
    });
  }
}
