import 'package:json_annotation/json_annotation.dart';
import 'package:sree_assesments/features/product_detail/domain/entities/detail_product_entity.dart';
part 'detail_product_model.g.dart';

@JsonSerializable()
class DetailProductModel extends DetailProductEntity {
  DetailProductModel(
      {required super.productImage,
      required super.productName,
      required super.application,
      required super.casNumber,
      required super.description,
      required super.formula,
      required super.hsCode,
      required super.iupacName,
      required super.packagingName});

  factory DetailProductModel.fromJson(Map<String, dynamic> json) =>
      _$DetailProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$DetailProductModelToJson(this);
}
