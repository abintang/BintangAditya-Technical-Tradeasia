import 'package:sree_assesments/features/product_detail/data/repositories/detail_product_repository_impl.dart';
import 'package:sree_assesments/features/product_detail/domain/entities/detail_product_entity.dart';
import 'package:sree_assesments/features/product_detail/domain/repositories/detail_product_repository.dart';

class GetDetailProduct {
  Future<DetailProductEntity> call() async {
    DetailProductRepository detailProductRepository =
        DetailProductRepositoryImpl();

    return detailProductRepository.getDetailProduct();
  }
}
