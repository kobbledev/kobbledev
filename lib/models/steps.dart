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
