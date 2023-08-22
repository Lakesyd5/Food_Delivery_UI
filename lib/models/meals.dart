class Meal {
  Meal({
    this.category,
    this.rating,
    this.mealTitle,
    this.imagePath,
    this.price,
    this.description,
    this.mealCategoryId
  });

  String ? category;
  double ? rating;
  String ? mealTitle;
  String ? imagePath;
  num ? price;
  String ? description;
  dynamic mealCategoryId;
}
