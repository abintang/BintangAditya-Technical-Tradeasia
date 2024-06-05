import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sree_assesments/features/product_detail/presentation/bloc/detail_product_bloc.dart';
import 'package:sree_assesments/features/product_detail/presentation/widgets/bottom_nav.dart';
import 'package:sree_assesments/features/product_detail/presentation/widgets/tab_layout_component.dart';
import 'package:sree_assesments/features/product_detail/presentation/widgets/table_component.dart';

import '../bloc/states/detail_product_state.dart';
import 'package:html/parser.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<DetailProductBloc>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<DetailProductBloc, DetailProductState>(
          builder: (context, state) {
        if (state is LoadingGetDetail) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          );
        } else if (state is GetDetailProductSuccess) {
          var formula = parse(state.detailProductEntity.formula);
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 50.h,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0, -1),
                        child: Image.network(
                          'https://chemtradea.chemtradeasia.com/${state.detailProductEntity.productImage}',
                          width: double.infinity,
                          height: 35.h,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0, -0.8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 6.w,
                                  color: Colors.white,
                                )),
                            Container(
                              width: 65.w,
                              height: 12.w,
                              margin:
                                  const EdgeInsets.only(left: 10, right: 10),
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.search_sharp,
                                    size: 6.w,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Expanded(
                                      child: TextField(
                                    textAlignVertical: TextAlignVertical.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        decorationThickness: 0),
                                    decoration: InputDecoration(
                                      hintText:
                                          state.detailProductEntity.productName,
                                      hintStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w400),
                                      border: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ))
                                ],
                              ),
                            ),
                            Container(
                              width: 12.w,
                              height: 12.w,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Material(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Center(
                                    child: Icon(
                                      Icons.shopping_cart_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0, 0.9),
                        child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            width: 90.w,
                            height: 23.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: const Offset(0, 4))
                                ]),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      state.detailProductEntity.productName,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    IconButton.outlined(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.share,
                                          color: Colors.black,
                                          size: 5.w,
                                        ))
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'CAS Number',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'HS Code',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Formula',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      state.detailProductEntity.casNumber,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      state.detailProductEntity.hsCode,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      state.detailProductEntity.iupacName,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 38.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF123C69),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Material(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(5),
                                        child: InkWell(
                                          onTap: () {},
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: Center(
                                            child: Text(
                                              "Download TDS",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 38.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF123C69),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Material(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(5),
                                        child: InkWell(
                                          onTap: () {},
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: Center(
                                            child: Text(
                                              "Download MSDS",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 1.h),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Basic Information',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Column(
                        children: [
                          TableComponent(
                              backgroundColor: const Color(0xFfF6F6F6),
                              textType: 'IUAPAC Name',
                              textValue: state.detailProductEntity.iupacName),
                          TableComponent(
                              backgroundColor: Colors.white,
                              textType: 'Appearance',
                              textValue: state.detailProductEntity.productName),
                          TableComponent(
                              backgroundColor: const Color(0xFfF6F6F6),
                              textType: 'Common Name',
                              textValue: state.detailProductEntity.productName),
                          TableComponent(
                              backgroundColor: Colors.white,
                              textType: 'Packaging',
                              textValue:
                                  state.detailProductEntity.packagingName),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  padding: EdgeInsets.only(
                      left: 5.w, right: 5.w, top: 1.h, bottom: 1.h),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Industry',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                          width: 85.w,
                          child: Wrap(
                              direction: Axis.horizontal,
                              children: List.generate(
                                  state.listIndustryEntity.length,
                                  (index) => IntrinsicWidth(
                                        child: Container(
                                            padding: const EdgeInsets.only(
                                              left: 10,
                                              right: 10,
                                            ),
                                            height: 4.h,
                                            margin: EdgeInsets.only(
                                                top: 1.h, right: 2.w),
                                            decoration: BoxDecoration(
                                                color: const Color(0xFFF3F7FA),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Material(
                                              color: Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: InkWell(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                onTap: () {},
                                                child: Center(
                                                    child: Text(
                                                  state
                                                      .listIndustryEntity[index]
                                                      .industryName,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15.sp),
                                                )),
                                              ),
                                            )),
                                      )))),
                    ],
                  ),
                ),
                TabLayoutComponent(
                  valueDescriptions: state.detailProductEntity.description,
                  valueApplications: state.detailProductEntity.application,
                ),
              ],
            ),
          );
        } else {
          return const SizedBox();
        }
      }),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
