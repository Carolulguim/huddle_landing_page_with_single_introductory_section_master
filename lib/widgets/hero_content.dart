import 'package:flutter/material.dart';
import 'package:huddle_landing_page_with_single_introductory_section_master/constants/text_styles.dart';

class HeroContent extends StatelessWidget {
  const HeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth > 800;

        return Column(
          crossAxisAlignment:
              isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
          children: [
            Text(
              isDesktop
                  ? 'Build The Community\nYour Fans Will Love'
                  : 'Build The Community Your Fans Will Love',
              style: TextStyles.h1,
              textAlign: isDesktop ? TextAlign.start : TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
  isDesktop
      ? 'Huddle re-imagines the way we build communities. You have\n'
        'a voice, but so does your audience. Create connections with\n'
        'your users as you engage in genuine discussion.'
      : 'Huddle re-imagines the way we build communities. You have a voice, '
        'but so does your audience. Create connections with your users as you '
        'engage in genuine discussion.',
  style: TextStyles.h2,
  textAlign: isDesktop ? TextAlign.start : TextAlign.center,
),

            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.only(
                  left: 40,
                  right: 40,
                  top: 20,
                  bottom: 20,
                ),
                elevation: 2,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Text('Register'),
            ),
          ],
        );
      },
    );
  }
}
