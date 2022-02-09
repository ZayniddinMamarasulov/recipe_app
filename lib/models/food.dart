class Food {
  String? foodId;
  String? label;
  String? category;
  String? categoryLabel;
  String? image;
  Food(
      {required this.foodId,
      required this.label,
      required this.category,
      required this.categoryLabel,
      required this.image});

  Food.fromMap(Map<String, dynamic> map) {
    foodId = (map["foodId"] as String?)!;
    label = (map["label"] as String?)!;
    category = (map["category"] as String?)!;
    categoryLabel = (map["categoryLabel"] as String?)!;
    if (map["image"] != null) image = (map["image"] as String?);
  }
}
