import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/colors.dart';

class SocialIcon extends StatefulWidget {
  final String assetPath;
  final VoidCallback onTap;

  const SocialIcon({
    super.key,
    required this.assetPath,
    required this.onTap,
  });

  @override
  State<SocialIcon> createState() => _SocialIconState(); 
}

class _SocialIconState extends State<SocialIcon> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
          border: Border.all(
            color: isHovered ? AppColors.button : Colors.white,
            width: 2,
          ),
        ),
        child: SvgPicture.asset(
          widget.assetPath,
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(
            isHovered ? AppColors.button: Colors.white,
            BlendMode.srcIn,
          ),
        )),
      ),
    );
  }
}