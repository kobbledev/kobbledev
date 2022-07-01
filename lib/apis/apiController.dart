import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kobble_dev/utils/Constants.dart';

import '../models/BaseResponse.dart';
import '../models/LoginRequest.dart';
import '../views/individual_user/login_flow/otp_screen.dart';
import 'Urls.dart';

class ApiController {


  Future<BaseResponse> callLoginApi(BuildContext context,
      String enteredMobileNo) async {
    BaseResponse baseResponse;
    try {
      var loginRequestObject = LoginRequest();
      loginRequestObject.countryCode = Constants.COUNTRY_CODE;
      loginRequestObject.phoneNumber = enteredMobileNo.toString();
      String url = ApiConstants.GET_OTP_TO_SIGNIN;
      var response = await Dio().post(url, data: loginRequestObject);

      baseResponse = BaseResponse.fromJson(jsonDecode(response.toString()));
      return baseResponse;
    } catch (e) {
      print(e);
    }
    throw {
    print('error in throw')
    };

  }

}