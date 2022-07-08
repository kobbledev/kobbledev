class DeviceDetails {
  late String deviceName;
  late String deviceVersion;
  late String identifier;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['deviceName'] = deviceName;
    data['deviceVersion'] = deviceVersion;
    data['identifier'] = identifier;
    return data;
  }
  
}

bool filledDetails = false;

bool customLogoIsSelected=false;