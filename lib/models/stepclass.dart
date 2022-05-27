class StepModel {
  final String label;
  bool isSelected;

  StepModel(this.label, this.isSelected);
}

class StepCardModel {
  final String cardImage;
  final String image;
  final String title;
  bool isSelected = false;

  StepCardModel({
    required this.cardImage,
    required this.image,
    required this.title,
  });
}

class CartTextModel {
  final String title;
  final String rate;

  CartTextModel(this.title, this.rate);
}

class CustomSelectModel {
  final String title;
  final double price;
  bool isSelected = false;
  CustomSelectModel(this.title, this.price);
}
