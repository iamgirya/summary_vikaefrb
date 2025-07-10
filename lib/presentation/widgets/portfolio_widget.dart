import 'package:flutter/material.dart';

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const images = [
      'assets/векторныеиллюстрации.png',
      'assets/полиграфия.png',
      'assets/концептыискетчи.png',
      'assets/шрифт.png',
    ];

    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      childAspectRatio: (380 / 240), // Примерное соотношение сторон из дизайна
      children:
          images.map((imagePath) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            );
          }).toList(),
    );
  }
}
