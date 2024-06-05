import 'package:json_annotation/json_annotation.dart';

class DetailProductEntity {
  @JsonKey(name: 'productname')
  String productName;
  @JsonKey(name: 'productimage')
  String productImage;
  @JsonKey(name: 'iupac_name')
  String iupacName;
  @JsonKey(name: 'cas_number')
  String casNumber;
  @JsonKey(name: 'hs_code')
  String hsCode;
  String formula;
  String description;
  String application;
  @JsonKey(name: 'packaging_name')
  String packagingName;

  DetailProductEntity(
      {required this.productImage,
      required this.productName,
      required this.application,
      required this.casNumber,
      required this.description,
      required this.formula,
      required this.hsCode,
      required this.iupacName,
      required this.packagingName});
}
