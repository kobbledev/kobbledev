import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
class ApiController {

  static Future<dynamic> getAPI(String url, Map<String, String> headers) async {
    dynamic response = await http.get(Uri.parse(url), headers: headers);
    return response;
  }

  static Future<dynamic> postAPI(String url, Map<String, String> headers, dynamic requestBody) async {
    dynamic response = await http.post(Uri.parse(url), headers: headers, body: (requestBody != null) ? requestBody : null
    );
    return response;
  }

  static Future<dynamic> putAPI(String url, Map<String, String> headers, dynamic requestBody) async {
    dynamic response = await http.put(Uri.parse(url), headers: headers, body: (requestBody != null) ? requestBody : null
    );
    return json.decode(response.body);
  }
  static Future<StreamedResponse> postMultiPartAPI(String url, Map<String, String> headers, Map<String, String> additionalData, String filePath) async{
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.headers.addAll(headers);
    request.files.add(await http.MultipartFile.fromPath('logo', filePath));
    request.fields.addAll(additionalData);
    var response = await request.send();
    return response;
  }
}