import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' show Client;

import '../models/item_model.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = '57e933e840826bf393f52e1a161c019d';

  Future<ItemModel> fetchMovieList() async {
    final apiUrl =
        Uri.parse('http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey');
    final response = await client.get(apiUrl);
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
