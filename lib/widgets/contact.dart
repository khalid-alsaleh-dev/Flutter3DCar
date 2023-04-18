import 'package:flutter/material.dart';
import 'package:flutter_3d_car/utils/app_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
                      bottom: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(AppAssets.instagram,
                                width: 20,
                                colorFilter: const ColorFilter.mode(
                                    Colors.white, BlendMode.srcIn)),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(AppAssets.twitter,
                                width: 20,
                                colorFilter: const ColorFilter.mode(
                                    Colors.white, BlendMode.srcIn)),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                              AppAssets.youtube,
                              width: 20,
                              colorFilter: const ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn),
                            ),
                          ),
                        ],
                      ));
  }
}