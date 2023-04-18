import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:reactable/reactable.dart';

class ChironSpot extends StatelessWidget {
  const ChironSpot({super.key, required this.showChironSpotAndChekcoutButton});

  final Reactable<bool> showChironSpotAndChekcoutButton;

  @override
  Widget build(BuildContext context) {
    return Scope(builder: (context) {
      return const Positioned(
              top: 35,
              child: Text(
                'CHIRON SPOT',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45),
              ))
          .animate(
            target: showChironSpotAndChekcoutButton.value ? 0 : 1,
          )
          .moveY(end: -30, duration: 0.6.seconds)
          .fadeOut(duration: 0.6.seconds);
    });
  }
}
