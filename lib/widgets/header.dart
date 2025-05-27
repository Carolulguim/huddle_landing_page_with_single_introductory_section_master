import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 98.0, top: 8.0),
        child: SvgPicture.asset(
          'lib/assets/images/logo.svg',
          height: 48,
        ),
      ),
    );
  }
}
