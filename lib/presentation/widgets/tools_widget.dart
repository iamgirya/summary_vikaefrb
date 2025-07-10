import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ToolsWidget extends StatelessWidget {
  const ToolsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const iconSize = 48.0;

    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Инструменты', style: textTheme.headlineMedium),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/ps.png', width: iconSize, height: iconSize),
              Image.asset('assets/ai.png', width: iconSize, height: iconSize),
              Image.asset('assets/id.png', width: iconSize, height: iconSize),
              SvgPicture.asset(
                'assets/figma.svg',
                width: iconSize,
                height: iconSize,
              ),
              Image.asset(
                'assets/fontlab-studio.png',
                width: iconSize,
                height: iconSize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
