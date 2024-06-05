import 'package:sree_assesments/features/product_detail/domain/entities/detail_product_entity.dart';

abstract class DetailProductRepository {
  Future<DetailProductEntity> getDetailProduct();
}
