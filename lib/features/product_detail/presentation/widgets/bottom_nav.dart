import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 9.h,
      padding: EdgeInsets.only(left: 5.w, right: 5.w),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 1,
            offset: const Offset(0, 1))
      ]),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 15.w,
            height: 7.h,
            decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.grey.withOpacity(0.3), width: 1),
                borderRadius: BorderRadius.circular(8)),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(8),
                child: Center(
                  child: Icon(
                    Icons.chat,
                    color: Colors.black,
                    size: 7.w,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 15.w,
            height: 7.h,
            decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.grey.withOpacity(0.3), width: 1),
                borderRadius: BorderRadius.circular(8)),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(8),
                child: Center(
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                    size: 7.w,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 7.h,
            width: 55.w,
            decoration: BoxDecoration(
                color: const Color(0xFF123C69),
                borderRadius: BorderRadius.circular(8)),
            child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(8),
                    child: Center(
                        child: Text(
                      "Send Inquiry",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17.sp),
                    )))),
          ),
        ],
      )),
    );
  }
}
