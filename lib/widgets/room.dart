import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Room extends StatelessWidget {
  const Room({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 1.sh,
      child: ModelViewer(
        id: "room",
        src: 'assets/models/room/Room.gltf',
        alt: "A 3D model of a room",
        cameraOrbit: '0deg 60deg 1mm',
        minFieldOfView: '3deg',
        maxFieldOfView: '6deg',
        cameraTarget: '1200cm -150cm 0cm',
        interpolationDecay: 500,
        cameraControls: false,
      ),
    );
  }
}
