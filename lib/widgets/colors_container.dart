import 'package:flutter/material.dart';
import 'package:flutter_3d_car/utils/app_colors.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactable/reactable.dart';
import 'dart:js' as js;

class ColorsContainer extends StatelessWidget {
  const ColorsContainer({super.key, required this.showColors});

  final Reactable<bool> showColors;

  @override
  Widget build(BuildContext context) {
    return Scope(builder: (context) {
      if (!showColors.value) {
        return const SizedBox.shrink();
      }
      return Positioned(
        top: 200.w,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.darkBackground.withOpacity(0.6),
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              border: Border.all(
                  color: Colors.white.withOpacity(0.7), width: 0.8.w)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15.w,
                ),
                const Text(
                  'CAR COLOR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 15.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        js.context.callMethod(
                            'setColor', [AppColors.darkBackgroundString]);
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              AppColors.darkBackground)),
                      child: SizedBox(
                        width: 25.w,
                        height: 50.w,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        js.context
                            .callMethod('setColor', [AppColors.redString]);
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.red)),
                      child: SizedBox(
                        width: 25.w,
                        height: 50.w,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        js.context
                            .callMethod('setColor', [AppColors.blueString]);
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.blue)),
                      child: SizedBox(
                        width: 25.w,
                        height: 50.w,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        js.context
                            .callMethod('setColor', [AppColors.yellowString]);
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.yellow)),
                      child: SizedBox(
                        width: 25.w,
                        height: 50.w,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.w,
                ),
              ],
            ),
          ),
        ),
      )
          .animate(target: showColors.value ? 1 : 0)
          .fadeIn(duration: 0.7.seconds, delay: 0.8.seconds);
    });
  }
}
