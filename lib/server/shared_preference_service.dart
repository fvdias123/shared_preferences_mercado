import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_mercado/objects/categoria.dart';
import 'package:shared_preferences_mercado/objects/produto.dart';

class SharedPreferenceService {
  Future<void> saveProdutos(List<Produto> produtos) async {
    final prefs = await SharedPreferences.getInstance();
    final String encodedData =
        json.encode(produtos.map((produto) => produto.toJson()).toList());
    await prefs.setString('produtos', encodedData);
  }

  Future<List<Produto>> getProdutos() async {
    final prefs = await SharedPreferences.getInstance();
    final String? produtosString = prefs.getString('produtos');
    if (produtosString != null) {
      final List<dynamic> decodedData = json.decode(produtosString);
      return decodedData.map((json) => Produto.fromMap(json)).toList();
    }
    return [];
  }



    Future<void> saveCategorias(List<Categoria> categorias) async {
    final prefs = await SharedPreferences.getInstance();
    final String encodedData =
        json.encode(categorias.map((categoria) => categoria.toJson()).toList());
    await prefs.setString('categorias', encodedData);
  }

  Future<List<Categoria>> getCategorias() async {
    final prefs = await SharedPreferences.getInstance();
    final String? categoriasString = prefs.getString('categorias');
    if (categoriasString != null) {
      final List<dynamic> decodedData = json.decode(categoriasString);
      return decodedData.map((json) => Categoria.fromMap(json)).toList();
    }
    return [];
  }
}