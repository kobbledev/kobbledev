class StepModel {
  final String label;
  bool isSelected;

  StepModel(this.label, this.isSelected);
}

class StepCardModel {
  final String cardImage;
  final String image;
  final String title;
  int qrCodeType=0;
  bool isSelected = false;

  StepCardModel({
    required this.cardImage,
    required this.image,
    required this.title,
  });
}



class CustomSelectModel {
  final String title;
  final int price;
  bool isSelected;
  CustomSelectModel(this.title, this.price, this.isSelected);
}

class CartTextModel {
  final String title;
  final String rate;

  CartTextModel(this.title, this.rate);
}

// class CustomSelectModel {
//   final String title;
//   final double price;
//   bool isSelected = false;
//   CustomSelectModel(this.title, this.price);
// }