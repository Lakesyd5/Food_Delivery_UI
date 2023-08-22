import 'package:quickbite_food_delivery_app_ui_challenge/models/category.dart';
import 'package:quickbite_food_delivery_app_ui_challenge/models/meals.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

List<Category> categories = [
  Category(
    id: uuid.v4(),
    title: 'Dessert',
    imageUrl: 'assets/images/dessert.png',
  ),
  Category(
    id: uuid.v4(),
    title: 'Salad',
    imageUrl: 'assets/images/salad.png',
  ),
  Category(
    id: uuid.v4(),
    title: 'Drinks',
    imageUrl: 'assets/images/drinks.png',
  ),
  Category(
    id: uuid.v4(),
    title: 'Seafoods',
    imageUrl: 'assets/images/seafood.png',
  )
];

List<Meal> dummymeals = [
  // Salads
  Meal(
    mealCategoryId: categories[1].id,
    category: categories[1].title,
    rating: 4.3,
    mealTitle: 'Carrots Salad',
    imagePath: 'assets/meals/carrots_salad.png',
    price: 4.24,
    description: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown.'
  ),
  Meal(
    mealCategoryId: categories[1].id,
    category: categories[1].title,
    rating: 3.2,
    mealTitle: 'Green Vegies',
    imagePath: 'assets/meals/green_vegies.png',
    price: 5.20,
    description: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown.'
  ),
  Meal(
    mealCategoryId: categories[1].id,
    category: categories[1].title,
    rating: 3.8,
    mealTitle: 'Chicken Salad',
    imagePath: 'assets/meals/chicken.png',
    price: 7.00,
    description: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown.'
  ),
  Meal(
    mealCategoryId: categories[1].id,
    category: categories[1].title,
    rating: 5.0,
    mealTitle: 'Fruit Salad',
    imagePath: 'assets/meals/fruit_salad.png',
    price: 6.50,
    description: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown.'
  ),

  // Desserts
  Meal(
    mealCategoryId: categories[0].id,
    category: categories[0].title,
    rating: 3.6,
    mealTitle: 'Pecan Pie',
    imagePath: 'assets/meals/pecan_pie.png',
    price: 4.60,
    description: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown.'
  ),
  Meal(
    mealCategoryId: categories[0].id,
    category: categories[0].title,
    rating: 3.9,
    mealTitle: 'Pumpkin Pie',
    imagePath: 'assets/meals/pumpkin_pie.png',
    price: 4.50,
    description: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown.'
  ),
  Meal(
    mealCategoryId: categories[0].id,
    category: categories[0].title,
    rating: 3.5,
    mealTitle: 'Cookies',
    imagePath: 'assets/meals/cookies.png',
    price: 4.99,
    description: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown.'
  ),
  Meal(
    mealCategoryId: categories[0].id,
    category: categories[0].title,
    rating: 4.0,
    mealTitle: 'Cakes',
    imagePath: 'assets/meals/cakes.png',
    price: 8.99,
    description: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown.'
  ),

  // Drinks
  Meal(
    mealCategoryId: categories[2].id,
    category: categories[2].title,
    rating: 4.5,
    mealTitle: 'Tea',
    imagePath: 'assets/meals/Tea.png',
    price: 4.50,
    description: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown.'
  ),
  Meal(
    mealCategoryId: categories[2].id,
    category: categories[2].title,
    rating: 5.5,
    mealTitle: 'Chocolate Milkshake & Pretzel',
    imagePath: 'assets/meals/chocolate_milkshake_with_pretzel.png',
    price: 6.50,
    description: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown.'
  ),
  Meal(
    mealCategoryId: categories[2].id,
    category: categories[2].title,
    rating: 4.5,
    mealTitle: 'Kiwi Smoothie',
    imagePath: 'assets/meals/kiwi_smoothie.png',
    price: 6.99,
    description: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown.'
  ),
  Meal(
    mealCategoryId: categories[2].id,
    category: categories[2].title,
    rating: 5.0,
    mealTitle: 'Iced Cocktails',
    imagePath: 'assets/meals/iced_cocktails.png',
    price: 7.50,
    description: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown.'
  ),
  Meal(
    mealCategoryId: categories[2].id,
    category: categories[2].title,
    rating: 5.0,
    mealTitle: 'White Wine',
    imagePath: 'assets/meals/whitewine.png',
    price: 8.50,
    description: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown.'
  )
];
