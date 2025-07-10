import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactInfo {
  final String icon;
  final String text;
  final String url;

  const ContactInfo({
    required this.icon,
    required this.text,
    required this.url,
  });
}

class ContactsWidget extends StatelessWidget {
  const ContactsWidget({super.key});

  static const List<ContactInfo> _contacts = [
    ContactInfo(
      icon: 'assets/telegram.svg',
      text: 'Vikaefrb',
      url: 'https://t.me/Vikaefrb',
    ),
    ContactInfo(
      icon: 'assets/mail.svg',
      text: 'viktoriababachenko@yandex.ru',
      url: 'mailto:viktoriababachenko@yandex.ru',
    ),
    ContactInfo(
      icon: 'assets/be.svg',
      text: 'www.behance.net/victoriababachenko',
      url: 'https://www.behance.net/victoriababachenko',
    ),
  ];

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
        children:
            _contacts
                .map(
                  (contact) => _buildContactItem(
                    context,
                    contact,
                    _contacts.last.url == contact.url,
                  ),
                )
                .toList(),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  Widget _buildContactItem(
    BuildContext context,
    ContactInfo contact,
    bool isLast,
  ) {
    final textTheme = Theme.of(context).textTheme;
    return Flexible(
      flex: isLast ? 1 : 0,
      child: InkWell(
        onTap: () => _launchUrl(contact.url),
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                width: 36,
                height: 36,
                child: SvgPicture.asset(contact.icon, fit: BoxFit.contain),
              ),
              const SizedBox(width: 15),
              Flexible(
                flex: isLast ? 1 : 0,
                child: Text(
                  contact.text,
                  style: textTheme.bodyMedium?.copyWith(fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
