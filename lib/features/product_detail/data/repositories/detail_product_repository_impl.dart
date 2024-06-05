import 'package:sree_assesments/features/product_detail/data/data_sources/detail_product_remote.dart';
import 'package:sree_assesments/features/product_detail/domain/entities/detail_product_entity.dart';
import 'package:sree_assesments/features/product_detail/domain/repositories/detail_product_repository.dart';

class DetailProductRepositoryImpl implements DetailProductRepository {
  @override
  Future<DetailProductEntity> getDetailProduct() async {
    DetailProductRemote detailProductRemote = DetailProductRemoteImpl();
    final remoteDetailproduct = await detailProductRemote.getDetailProduct();
    return remoteDetailproduct;
  }
}
