import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../assets.dart';

class EmptySearchResult extends StatelessWidget {
  const EmptySearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Lottie.asset(
            Assets.lottie.lottieSearchingAnimJSON,
            width: size.width * 0.8,
          ),
        ),
        const Text('Bir sonuç bulunamadı!'),
      ],
    );
  }
}
