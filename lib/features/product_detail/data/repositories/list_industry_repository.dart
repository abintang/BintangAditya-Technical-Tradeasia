import 'package:sree_assesments/features/product_detail/data/data_sources/list_industry_remote.dart';
import 'package:sree_assesments/features/product_detail/domain/entities/list_industry_entity.dart';
import 'package:sree_assesments/features/product_detail/domain/repositories/list_industry_repository.dart';

class ListIndustryRepositoryImpl implements ListIndustryRepository {
  @override
  Future<List<ListIndustryEntity>> getListIndustry() async {
    ListIndustryRemote listIndustryRemote = ListIndustryRemoteImpl();
    final listIndustry = await listIndustryRemote.getListIndustry();
    return listIndustry;
  }
}
