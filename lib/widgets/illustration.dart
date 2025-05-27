import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Illustration extends StatelessWidget {
  const Illustration({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('lib/assets/images/illustration-mockups.svg');
  }
}