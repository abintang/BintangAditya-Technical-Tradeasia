import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sree_assesments/features/product_detail/domain/usecases/get_detail_product.dart';
import 'package:sree_assesments/features/product_detail/domain/usecases/get_list_industry.dart';
import 'package:sree_assesments/features/product_detail/presentation/bloc/events/detail_product_event.dart';
import 'package:sree_assesments/features/product_detail/presentation/bloc/states/detail_product_state.dart';

class DetailProductBloc extends Bloc<DetailProductEvent, DetailProductState> {
  DetailProductBloc() : super(InitialState()) {
    on<LoadDetailProduct>(_onLoadDetailProduct);
  }

  void _onLoadDetailProduct(
      LoadDetailProduct event, Emitter<DetailProductState> emit) async {
    emit(LoadingGetDetail());
    try {
      final product = await GetDetailProduct().call();
      final industry = await GetListIndustry().call();
      emit(GetDetailProductSuccess(
          detailProductEntity: product, listIndustryEntity: industry));
    } catch (e) {
      emit(GetDetailProductFailed());
    }
  }
}
