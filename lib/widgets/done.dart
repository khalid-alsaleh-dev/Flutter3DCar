import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactable/reactable.dart';

class Done extends StatelessWidget {
  const Done({super.key, required this.showDoneButton});

  final Reactable<bool> showDoneButton;

  @override
  Widget build(BuildContext context) {
    return Scope(builder: (context) {
      return Positioned(
        bottom: 50,
        right: 100.w,
        child: ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            side: MaterialStatePropertyAll(BorderSide(color: Colors.white)),
            backgroundColor:
                MaterialStatePropertyAll<Color>(Colors.transparent),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 40),
            child: Text(
              'DONE',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      )
          .animate(
            target: showDoneButton.value ? 1 : 0,
          )
          .fadeIn(duration: 0.7.seconds, delay: 0.8.seconds);
    });
  }
}
