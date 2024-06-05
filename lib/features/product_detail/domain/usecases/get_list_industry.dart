import 'package:sree_assesments/features/product_detail/data/repositories/list_industry_repository.dart';
import 'package:sree_assesments/features/product_detail/domain/entities/list_industry_entity.dart';
import 'package:sree_assesments/features/product_detail/domain/repositories/list_industry_repository.dart';

class GetListIndustry {
  Future<List<ListIndustryEntity>> call() async {
    ListIndustryRepository listIndustryRepository =
        ListIndustryRepositoryImpl();

    return listIndustryRepository.getListIndustry();
  }
}
