import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sree_assesments/features/product_detail/presentation/bloc/detail_product_bloc.dart';
import 'package:sree_assesments/features/product_detail/presentation/bloc/events/detail_product_event.dart';
import 'package:sree_assesments/features/product_detail/presentation/page/DetailProductPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<DetailProductBloc>(
                create: (context) =>
                    DetailProductBloc()..add(LoadDetailProduct()))
          ],
          child: MaterialApp(
              theme: ThemeData(
                scaffoldBackgroundColor: const Color(0xFfF6F6F6),
              ),
              debugShowCheckedModeBanner: false,
              home: const DetailProductPage()),
        );
      },
    );
  }
}
