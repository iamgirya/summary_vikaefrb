import 'package:flutter/material.dart';

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildPortfolioItem(imagePath: 'assets/векторныеиллюстрации.png'),
        const SizedBox(width: 20),
        _buildPortfolioItem(imagePath: 'assets/полиграфия.png'),
        const SizedBox(width: 20),
        _buildPortfolioItem(imagePath: 'assets/концептыискетчи.png'),
        const SizedBox(width: 20),
        _buildPortfolioItem(imagePath: 'assets/шрифт.png'),
      ],
    );
  }

  Widget _buildPortfolioItem({required String imagePath}) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }
}
