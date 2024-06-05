import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TabLayoutComponent extends StatelessWidget {
  final String valueApplications;
  final String valueDescriptions;
  const TabLayoutComponent(
      {super.key,
      required this.valueApplications,
      required this.valueDescriptions});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        color: Colors.white,
        margin: const EdgeInsets.only(bottom: 5),
        child: Column(
          children: [
            TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: const Color(0xFF123C69),
                indicatorWeight: 3,
                labelColor: const Color(0xFF123C69),
                tabs: [
                  Tab(
                    child: Text(
                      'Description',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Applications',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  )
                ]),
            Container(
              width: double.infinity,
              height: 80.w,
              padding:
                  EdgeInsets.only(left: 5.w, right: 5.w, top: 3.h, bottom: 3.h),
              child: TabBarView(children: [
                Text(
                  valueDescriptions,
                  style: TextStyle(fontSize: 15.sp),
                ),
                Text(
                  valueApplications,
                  style: TextStyle(fontSize: 15.sp),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
