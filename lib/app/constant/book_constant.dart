import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../assets.dart';

typedef BC = BookConstant;
class BookConstant {
  static const String emptyTitle = 'Bilinmiyor';
  static final Widget emptyBookIcon = SvgPicture.asset(Assets.images.svgEmptyBookSVG, width: 80, height: 120);

}