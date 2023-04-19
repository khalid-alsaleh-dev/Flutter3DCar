import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Car extends StatelessWidget {
  const Car({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.6.sw,
      height: 0.3.sw,
      child: ModelViewer(
        id: "car",
        src: 'assets/models/car/scene.gltf',
        interpolationDecay: 500,
        xrEnvironment: false,
        alt: "A 3D model of car",
        cameraOrbit: '90deg 40deg 1mm',
        minFieldOfView: '30deg',
        maxFieldOfView: '28deg',
        cameraControls: false,
        rotationPerSecond: '0.5rad',
      ),
    );
  }
}
