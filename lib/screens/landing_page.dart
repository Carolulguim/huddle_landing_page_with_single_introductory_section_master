import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/colors.dart';
import '../widgets/header.dart';
import '../widgets/illustration.dart';
import '../widgets/hero_content.dart';
import '../widgets/footer.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [

          Positioned.fill(
            child: SvgPicture.asset(
              'lib/assets/images/bg-desktop.svg',
              fit: BoxFit.cover,
            ),
          ), 
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
                child: Column(
                  children: [
                    const Header(),
                    const SizedBox(height: 40),
                    Expanded(
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          final isWide = constraints.maxWidth > 800;
                          return Flex(
                            direction: isWide ? Axis.horizontal : Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Expanded(child: Illustration()),
                              SizedBox(width: 40, height: 40),
                              Expanded(child: HeroContent()),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Footer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
