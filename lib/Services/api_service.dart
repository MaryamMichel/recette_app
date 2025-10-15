import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/recipe_model.dart';

class ApiService {
  static const String baseUrl = 'https://dummyjson.com';

  static Future<Recipe?> fetchRecipe(int id) async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/recipes/$id'));

      if (response.statusCode == 200) {
        return Recipe.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load recipe');
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}