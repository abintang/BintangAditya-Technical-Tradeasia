import 'package:json_annotation/json_annotation.dart';
import 'package:sree_assesments/features/product_detail/domain/entities/list_industry_entity.dart';
part 'list_industry_model.g.dart';

@JsonSerializable()
class ListIndustryModel extends ListIndustryEntity {
  ListIndustryModel({required super.industryUrl, required super.industryName});

  factory ListIndustryModel.fromJson(Map<String, dynamic> json) =>
      _$ListIndustryModelFromJson(json);

  Map<String, dynamic> toJson() => _$ListIndustryModelToJson(this);
}
