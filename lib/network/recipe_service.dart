import 'package:http/http.dart';

const String apiKey = '77a537db560c4b87c387b9946add02ea';
const String apiId = 'c8bc9889';
const String apiUrl = 'https://api.edamam.com/search';


class RecipeService {
  // 1
  Future getData(String url) async {
    // 2
    print('Calling url: $url');
    // 3
    final response = await get(Uri.parse(url));
    // 4
    if (response.statusCode == 200) {
      // 5
      return response.body;
    } else {
      // 6
      print(response.statusCode);
    }
  }

// 1
  Future<dynamic> getRecipes(String query, int from, int to) async
  {
    // 2
    final recipeData = await getData('$apiUrl?app_id=$apiId&app_key=$apiKey&q=$query&from=$from&to=$to');
    // 3
    return recipeData;
  }
}
