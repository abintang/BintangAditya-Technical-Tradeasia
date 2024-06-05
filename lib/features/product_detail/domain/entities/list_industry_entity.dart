import 'package:json_annotation/json_annotation.dart';

class ListIndustryEntity {
  @JsonKey(name: 'industry_url')
  String industryUrl;
  @JsonKey(name: 'industry_name')
  String industryName;

  ListIndustryEntity({required this.industryUrl, required this.industryName});
}
