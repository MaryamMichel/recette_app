class Recipe {
  final int id;
  final String name;
  final int prepTimeMinutes;
  final int cookTimeMinutes;
  final double rating;
  final int servings;
  final String ingredients;
  final String instructions;
  final String image;

  Recipe({
    required this.id,
    required this.name,
    required this.prepTimeMinutes,
    required this.rating,
    required this.image,
    required this.cookTimeMinutes,
    required this.servings,
    required this.ingredients,
    required this.instructions,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      name: json['name'],
      prepTimeMinutes: json['prepTimeMinutes'],
      cookTimeMinutes: json['cookTimeMinutes'],
      rating: json['rating'],
      servings: json['servings'],
      ingredients: json['ingredients'],
      instructions: json['instructions'],
      image: json['image'],
    );
  }
}
