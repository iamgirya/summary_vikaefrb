import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactsWidget extends StatelessWidget {
  const ContactsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildContactItem(
            context,
            icon: 'assets/telegram.svg',
            text: 'Vikaefrb',
          ),
          _buildContactItem(
            context,
            icon: 'assets/mail.svg',
            text: 'viktoriababachenko@yandex.ru',
          ),
          _buildContactItem(
            context,
            icon: 'assets/be.svg',
            text: 'www.behance.net/victoriababachenko',
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(
    BuildContext context, {
    required String icon,
    required String text,
  }) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        SvgPicture.asset(icon, width: 24, height: 24),
        const SizedBox(width: 10),
        Text(text, style: textTheme.bodyMedium),
      ],
    );
  }
}
