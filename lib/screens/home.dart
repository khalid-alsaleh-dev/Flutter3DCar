import 'package:flutter/material.dart';
import 'package:flutter_3d_car/widgets/car.dart';
import 'package:flutter_3d_car/widgets/checkout.dart';
import 'package:flutter_3d_car/widgets/chiron_spot.dart';
import 'package:flutter_3d_car/widgets/colors_container.dart';
import 'package:flutter_3d_car/widgets/contact.dart';
import 'package:flutter_3d_car/widgets/description.dart';
import 'package:flutter_3d_car/widgets/done.dart';
import 'package:flutter_3d_car/widgets/modes_container.dart';
import 'package:flutter_3d_car/widgets/room.dart';
import 'package:reactable/reactable.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Reactable<bool> showTitleAndChekcoutButton = true.asReactable;
  final Reactable<bool> removeCheckoutButton = false.asReactable;
  final Reactable<bool> showDescription = true.asReactable;
  final Reactable<bool> showModes = false.asReactable;
  final Reactable<bool> removeModes = false.asReactable;
  final Reactable<bool> showColors = false.asReactable;
  final Reactable<bool> showDoneButton = false.asReactable;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Room(),
            const Car(),
            ChironSpot(showChironSpotAndChekcoutButton: showTitleAndChekcoutButton),
            Description(showDescription: showDescription),
            ModesContainer(removeModes: removeModes, showColors: showColors, showDoneButton: showDoneButton, showModes: showModes),
            Checkout(removeCheckoutButton: removeCheckoutButton, showTitleAndChekcoutButton: showTitleAndChekcoutButton, showDescription: showDescription, showModes: showModes),
            ColorsContainer(showColors: showColors),
            const Contact(),
            Done(showDoneButton: showDoneButton)
          ],
        ),
      ),
    );
  }
}