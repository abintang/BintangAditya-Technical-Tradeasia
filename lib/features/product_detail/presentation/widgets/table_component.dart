import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TableComponent extends StatelessWidget {
  final Color backgroundColor;
  final String textType;
  final String textValue;

  const TableComponent(
      {super.key,
      required this.backgroundColor,
      required this.textType,
      required this.textValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 7.h,
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 35.w,
            child: Text(
              textType,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 5.w),
            child: Text(
              ":",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            width: 35.w,
            child: Text(
              textValue,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
