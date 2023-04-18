import 'package:flutter/material.dart';
import 'package:flutter_3d_car/utils/app_colors.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactable/reactable.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.showDescription});
  final Reactable<bool> showDescription;

  @override
  Widget build(BuildContext context) {
    return Scope(builder: (context) {
      return Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(right: 40.0.w),
          child: SizedBox(
            width: 300.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BEAUTY & BEAST',
                    style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp)),
                SizedBox(
                  height: 13.w,
                ),
                Text(
                    'Pariatur voluptate ad Lorem id consectetur tempor dolor laborum proident deserunt id nostrud aute dolor. Non nisi esse consequat elit dolore in ipsum nostrud ipsum. Excepteur pariatur est sint anim reprehenderit magna duis. Ut veniam proident aute fugiat ea ex dolore veniam nulla proident. Laboris Lorem nostrud Lorem sit voluptate duis elit deserunt elit.',
                    style: TextStyle(color: Colors.white, fontSize: 12.sp))
              ],
            ),
          ),
        ),
      )
          .animate(
            target: showDescription.value ? 0 : 1,
          )
          .moveX(end: 80, duration: 0.6.seconds)
          .fadeOut();
    });
  }
}
