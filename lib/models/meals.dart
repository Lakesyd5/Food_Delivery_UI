class Meal {
  Meal({
    this.category,
    this.rating,
    this.mealTitle,
    this.imagePath,
    this.price,
    this.description,
    this.mealCategoryId,
    this.quantity = 1,
  });

  String ? category;
  double ? rating;
  String ? mealTitle;
  String ? imagePath;
  num ? price;
  int quantity;
  String ? description;
  dynamic mealCategoryId;
}
