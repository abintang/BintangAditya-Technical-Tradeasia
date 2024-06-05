import 'dart:convert';
import 'dart:developer';

import 'package:sree_assesments/features/product_detail/data/models/detail_product_model.dart';
import 'package:http/http.dart' as http;

abstract class DetailProductRemote {
  Future<DetailProductModel> getDetailProduct();
}

class DetailProductRemoteImpl implements DetailProductRemote {
  @override
  Future<DetailProductModel> getDetailProduct() async {
    String url = 'https://tradeasia.sg//en/dipentene';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      log(response.body);
      final jsonResponse = json.decode(response.body);
      return DetailProductModel.fromJson(jsonResponse['detail_product']);
    } else {
      throw Exception('Failed to load');
    }
  }
}
