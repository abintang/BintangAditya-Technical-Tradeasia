import 'package:sree_assesments/features/product_detail/domain/entities/list_industry_entity.dart';

abstract class ListIndustryRepository {
  Future<List<ListIndustryEntity>> getListIndustry();
}
