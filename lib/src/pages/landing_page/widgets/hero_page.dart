import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: SvgPicture.asset(
        'assets/cook_a_bot.svg',
        fit: BoxFit.contain,
      ),
    );
  }
}
