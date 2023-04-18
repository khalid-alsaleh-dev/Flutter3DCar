import 'package:flutter/material.dart';
import 'package:flutter_3d_car/utils/app_colors.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:reactable/reactable.dart';
import 'dart:js' as js;

class Checkout extends StatelessWidget {
  const Checkout(
      {super.key,
      required this.removeCheckoutButton,
      required this.showTitleAndChekcoutButton,
      required this.showDescription,
      required this.showModes});
  final Reactable<bool> removeCheckoutButton;
  final Reactable<bool> showTitleAndChekcoutButton;
  final Reactable<bool> showDescription;
  final Reactable<bool> showModes;

  @override
  Widget build(BuildContext context) {
    return Scope(builder: (context) {
      if (removeCheckoutButton.value) {
        return const SizedBox.shrink();
      }
      return Positioned(
        top: 200,
        child: ElevatedButton(
          onPressed: () {
            js.context.callMethod('runModesAnimation');
            showTitleAndChekcoutButton.value = false;
            showDescription.value = false;
            showModes.value = true;
          },
          style: const ButtonStyle(
            side:
                MaterialStatePropertyAll(BorderSide(color: AppColors.primary)),
            backgroundColor:
                MaterialStatePropertyAll<Color>(AppColors.darkBackground),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 40),
            child: Text(
              'CHECK OUT',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      )
          .animate(
              target: showTitleAndChekcoutButton.value ? 0 : 1,
              onInit: (contr) {
                contr.addStatusListener((status) {
                  if (!showTitleAndChekcoutButton.value &&
                      status == AnimationStatus.completed) {
                    removeCheckoutButton.value = true;
                  }
                });
              })
          .fadeOut(duration: 0.7.seconds);
    });
  }
}
