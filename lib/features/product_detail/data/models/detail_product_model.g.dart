// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailProductModel _$DetailProductModelFromJson(Map<String, dynamic> json) =>
    DetailProductModel(
      productImage: json['productimage'] as String,
      productName: json['productname'] as String,
      application: json['application'] as String,
      casNumber: json['cas_number'] as String,
      description: json['description'] as String,
      formula: json['formula'] as String,
      hsCode: json['hs_code'] as String,
      iupacName: json['iupac_name'] as String,
      packagingName: json['packaging_name'] as String,
    );

Map<String, dynamic> _$DetailProductModelToJson(DetailProductModel instance) =>
    <String, dynamic>{
      'productname': instance.productName,
      'productimage': instance.productImage,
      'iupac_name': instance.iupacName,
      'cas_number': instance.casNumber,
      'hs_code': instance.hsCode,
      'formula': instance.formula,
      'description': instance.description,
      'application': instance.application,
      'packaging_name': instance.packagingName,
    };
