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
