import 'package:flutter/material.dart';
import 'package:flutter_3d_car/utils/app_colors.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactable/reactable.dart';
import 'dart:js' as js;

class ModesContainer extends StatelessWidget {
  const ModesContainer(
      {super.key,
      required this.removeModes,
      required this.showColors,
      required this.showDoneButton,
      required this.showModes});

  final Reactable<bool> removeModes;
  final Reactable<bool> showColors;
  final Reactable<bool> showDoneButton;
  final Reactable<bool> showModes;
  
  @override
  Widget build(BuildContext context) {
    return Scope(builder: (context) {
      if (removeModes.value) {
        return const SizedBox.shrink();
      }
      return Positioned(
        top: 200.w,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.darkBackground,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border:
                  Border.all(color: Colors.white.withOpacity(0.7), width: 0.3)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(AppColors.primary),
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.darkBackground)),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 25),
                    child: Text(
                      'MATERIAL',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    js.context.callMethod('runColorsAnimation');
                    showColors.value = true;
                    showDoneButton.value = true;
                  },
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(AppColors.primary),
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.darkBackground)),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 25),
                    child: Text(
                      'COLOR',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(AppColors.primary),
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.darkBackground)),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 25),
                    child: Text(
                      'COMPANY',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(AppColors.primary),
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.darkBackground)),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 25),
                    child: Text(
                      'STYLE',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
            .animate(
                target: showColors.value ? 1 : 0,
                onInit: (contr) {
                  contr.addStatusListener((status) {
                    if (showColors.value &&
                        status == AnimationStatus.completed) {
                      removeModes.value = true;
                    }
                  });
                })
            .fadeOut(
              duration: 0.7.seconds,
            ),
      )
          .animate(target: showModes.value ? 1 : 0)
          .fadeIn(duration: 0.7.seconds, delay: 0.8.seconds);
    });
  }
}
