class CardDetailsResponse {
  int? status;
  String? message;
  List<CardTypes>? cardTypes;

  CardDetailsResponse({this.status, this.message, this.cardTypes});

  CardDetailsResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['cardTypes'] != null) {
      cardTypes = <CardTypes>[];
      json['cardTypes'].forEach((v) {
        cardTypes!.add(CardTypes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (cardTypes != null) {
      data['cardTypes'] = cardTypes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CardTypes {
  String? cardName;
  int? cardPrice;
  int? discount;
  int? gst;

  CardTypes({this.cardName, this.cardPrice, this.discount, this.gst});

  CardTypes.fromJson(Map<String, dynamic> json) {
    cardName = json['cardName'];
    cardPrice = json['cardPrice'];
    discount = json['discount'];
    gst = json['gst'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cardName'] = cardName;
    data['cardPrice'] = cardPrice;
    data['discount'] = discount;
    data['gst'] = gst;
    return data;
  }
}