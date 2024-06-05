import 'package:sree_assesments/features/product_detail/domain/entities/detail_product_entity.dart';
import 'package:sree_assesments/features/product_detail/domain/entities/list_industry_entity.dart';

abstract class DetailProductState {}

class InitialState extends DetailProductState {}

class LoadingGetDetail extends DetailProductState {}

class GetDetailProductSuccess extends DetailProductState {
  final DetailProductEntity detailProductEntity;
  final List<ListIndustryEntity> listIndustryEntity;

  GetDetailProductSuccess(
      {required this.detailProductEntity, required this.listIndustryEntity});
}

class GetDetailProductFailed extends DetailProductState {}
