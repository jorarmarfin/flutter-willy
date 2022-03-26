import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/models.dart';

class WordpressProvider extends ChangeNotifier {
  final String _baseUrl = 'https://willymartinezsanchez.com';

  late List<BannerModel> bannerWordpress = [];
  late List<MaterialModel> materialWordpress = [];
  int _indice = 0;
  int get indice => _indice;
  set indice(int value) {
    _indice = value;
  }

  Future getBanners() async {
    var url = Uri.parse('$_baseUrl/wp-json/jet-cct/api_banner');
    final response = await http.get(url);
    final decodeData = jsonDecode(response.body);
    bannerWordpress = BannersModel.fromJson(decodeData).banners;
    return bannerWordpress;
  }

  Future getMateriales() async {
    var url = Uri.parse('$_baseUrl/wp-json/jet-cct/api_materiales');
    final response = await http.get(url);
    final decodeData = jsonDecode(response.body);
    // bannerWordpress = BannersModel.fromJson(decodeData).banners;
    materialWordpress = MaterialesModel.fromJson(decodeData).materiales;
    return materialWordpress;
  }
}
