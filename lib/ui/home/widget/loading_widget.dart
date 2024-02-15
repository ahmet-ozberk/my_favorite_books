import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../assets.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Lottie.asset(Assets.lottie.lottieLoadingJSON));
  }
}