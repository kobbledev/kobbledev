import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../../../../models/shopping_cart_request.dart';
import '../../../../models/shopping_cart_response.dart';
import '../../../../models/steps.dart';
import '../../../../utils/api_controller.dart';
import '../../../../utils/api_list.dart';
import '../../../../utils/local_storage.dart';
class ShoppingCartProvider with ChangeNotifier {

  Future<http.Response> sendOrder(StepCardModel qrCodeModel,StepCardModel fontModel,StepCardModel styleModel,String token,String imagePath) async {
    // if (kDebugMode) {
    //   print("qr${qrCodeModel.title}:::${qrCodeModel.image}");
    // }
    Map<String, String> headers = {};
    headers["x-auth"] = token;
    headers["Content-Type"] = 'application/x-www-form-urlencoded';

    Map<String, dynamic> formMap = {};


    // FormData formData =  FormData.from({
    //   "name": "wendux",
    //   "file1": new UploadFileInfo(new File("./upload.jpg"), "upload1.jpg")
    // });
    ShoppingCartRequest shoppingCartRequest = ShoppingCartRequest(
        cardType: "regular card",
        cardPrice: "1",
        qrCodeType: qrCodeModel.qrCodeType.toString(),
        qrCodeName: qrCodeModel.title,
        styleName: styleModel.image,
        fontName: fontModel.image,
        addressId: "3beab397-5811-4131-8ecf-a39fdaf1ada0",
        addressName: "Lokesh1",
        addressStreet: "Jagruthi  Colony",
        addressCity: "Hyderabad",
        addressState: "Telangana",
        addressPincode: "500084",
        addressCountry: "India",
        addressContactNumber: "9052353143"
    );

    formMap["logo"] = File('assets/icons/edit_card/stepCard_4.png');
    formMap.addAll(shoppingCartRequest.toJson());
    FormData formData = FormData.fromMap(formMap);

    Map<String, String> additionalData = HashMap<String, String>();
    additionalData.putIfAbsent("cardType", () => "regular card");
    additionalData.putIfAbsent("cardPrice", () => "1");
    additionalData.putIfAbsent("qrCodeType", () => qrCodeModel.qrCodeType.toString());
    additionalData.putIfAbsent("qrCodeName", () => qrCodeModel.title);
    additionalData.putIfAbsent("styleName", () => styleModel.image);
    additionalData.putIfAbsent("addressId", () => "3beab397-5811-4131-8ecf-a39fdaf1ada0");
    additionalData.putIfAbsent("addressName", () => "Lokesh1");
    additionalData.putIfAbsent("addressStreet", () => "Jagruthi  Colony");
    additionalData.putIfAbsent("addressCity", () => "Hyderabad");
    additionalData.putIfAbsent("addressState", () => "Telangana");
    additionalData.putIfAbsent("addressPincode", () => "500084");
    additionalData.putIfAbsent("addressCountry", () => "India");
    additionalData.putIfAbsent("addressContactNumber", () => "9052353143");

    http.StreamedResponse streamedResponse;
    streamedResponse = await ApiController.postMultiPartAPI(Apis.order, headers, additionalData, imagePath);
    var response = await http.Response.fromStream(streamedResponse);
    if (kDebugMode) {
      print('MultiPathAPI Response Status: ${response.body}');
    }
   ShoppingCartResponse shoppingCartResponse = ShoppingCartResponse.fromJson(jsonDecode(response.body));
   if(shoppingCartResponse.cardDetails!=null && shoppingCartResponse.cardDetails!.qrCodePath!=null){
    LocalStorage.setStringData(LocalStorage.qrPath,shoppingCartResponse.cardDetails!.qrCodePath!);
   }
    return response;
  }

  Future<Response<dynamic>> updateOrderStatus(String orderId,String transactionId,String token) async {
    Map<String, String> headers = {};
    headers["x-auth"] = token;
    headers["Content-Type"] = 'application/x-www-form-urlencoded';
    Map<String, dynamic> formMap = {};
    formMap["orderId"] = orderId;
    formMap["transactionId"] = transactionId;
    FormData formData = FormData.fromMap(formMap);
    Dio dio = Dio();
    dio.interceptors.add(
      DioLoggingInterceptor(
        level: Level.body,
        compact: false,
      ),
    );
    dio.options.headers = headers;
    return await dio.post(Apis.updateOrder,data: formData);
  }
}