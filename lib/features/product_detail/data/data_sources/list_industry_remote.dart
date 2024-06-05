import 'dart:convert';

import 'package:sree_assesments/features/product_detail/data/models/list_industry_model.dart';
import 'package:http/http.dart' as http;

abstract class ListIndustryRemote {
  Future<List<ListIndustryModel>> getListIndustry();
}

class ListIndustryRemoteImpl implements ListIndustryRemote {
  @override
  Future<List<ListIndustryModel>> getListIndustry() async {
    String url = 'https://tradeasia.sg//en/dipentene';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse =
          json.decode(response.body)['list-industry'];
      final List<ListIndustryModel> industry =
          jsonResponse.map((json) => ListIndustryModel.fromJson(json)).toList();

      return industry;
    } else {
      throw Exception('Failed to load');
    }
  }
}
