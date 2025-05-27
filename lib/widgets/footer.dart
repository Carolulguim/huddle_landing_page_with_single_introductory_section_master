import 'package:flutter/material.dart';
import '../widgets/social_icons.dart'; 

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIcon(
          assetPath: 'lib/assets/images/icons/github.svg',
          onTap: () {},
        ),
        const SizedBox(width: 16),
        SocialIcon(
          assetPath: 'lib/assets/images/icons/x.svg',
          onTap: () {},
        ),
        const SizedBox(width: 16),
        SocialIcon(
          assetPath: 'lib/assets/images/icons/instagram.svg',
          onTap: () {},
        ),
      ],
    );
  }
}