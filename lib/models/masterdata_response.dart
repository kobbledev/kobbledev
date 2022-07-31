import '../utils/constants.dart';

class MasterDataResponse {
  int? status;
  String? message;
  List<QrCodes>? qrCodes;
  List<Styles>? styles;
  List<Fonts>? fonts;
  List<CardTypes>? cardTypes;

  MasterDataResponse(
      {this.status,
        this.message,
        this.qrCodes,
        this.styles,
        this.fonts,
        this.cardTypes});

  MasterDataResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['qrCodes'] != null) {
      qrCodes = <QrCodes>[];
      json['qrCodes'].forEach((v) {
        qrCodes!.add(new QrCodes.fromJson(v));
      });
    }
    if (json['styles'] != null) {
      styles = <Styles>[];
      json['styles'].forEach((v) {
        styles!.add(new Styles.fromJson(v));
      });
    }
    if (json['fonts'] != null) {
      fonts = <Fonts>[];
      json['fonts'].forEach((v) {
        fonts!.add(new Fonts.fromJson(v));
      });
    }
    if (json['cardTypes'] != null) {
      cardTypes = <CardTypes>[];
      json['cardTypes'].forEach((v) {
        cardTypes!.add(new CardTypes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.qrCodes != null) {
      data['qrCodes'] = this.qrCodes!.map((v) => v.toJson()).toList();
    }
    if (this.styles != null) {
      data['styles'] = this.styles!.map((v) => v.toJson()).toList();
    }
    if (this.fonts != null) {
      data['fonts'] = this.fonts!.map((v) => v.toJson()).toList();
    }
    if (this.cardTypes != null) {
      data['cardTypes'] = this.cardTypes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class QrCodes {
  int? qrCodeType;
  String? qrCodeImage;
  String? qrCodeName;
  String cardImage= Constants.qrCardBG;

  QrCodes({this.qrCodeType, this.qrCodeImage, this.qrCodeName});

  QrCodes.fromJson(Map<String, dynamic> json) {
    qrCodeType = json['qrCodeType'];
    qrCodeImage = json['qrCodeImage'];
    qrCodeName = json['qrCodeName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['qrCodeType'] = this.qrCodeType;
    data['qrCodeImage'] = this.qrCodeImage;
    data['qrCodeName'] = this.qrCodeName;
    return data;
  }
}

class Styles {
  String? styleName;
  String cardImage=Constants.styleCardType;
  Styles({this.styleName});

  Styles.fromJson(Map<String, dynamic> json) {
    styleName = json['styleName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['styleName'] = this.styleName;
    return data;
  }
}

class Fonts {
  String? fontName;
  String cardImage=Constants.fontCardType;
  Fonts({this.fontName});

  Fonts.fromJson(Map<String, dynamic> json) {
    fontName = json['fontName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fontName'] = this.fontName;
    return data;
  }
}

class CardTypes {
  String? cardName;
  int? cardPrice;

  CardTypes({this.cardName, this.cardPrice});

  CardTypes.fromJson(Map<String, dynamic> json) {
    cardName = json['cardName'];
    cardPrice = json['cardPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cardName'] = this.cardName;
    data['cardPrice'] = this.cardPrice;
    return data;
  }
}
