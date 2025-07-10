import 'package:flutter/material.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final primaryColor = Theme.of(context).primaryColor;

    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Опыт работы', style: textTheme.headlineMedium),
          const SizedBox(height: 20),
          _buildJobExperience(
            context,
            title: 'Младший иллюстратор',
            company: 'Онлайн школа Интернет урок',
            period: '(октябрь 2022 – апрель 2025)',
            duties: [
              'Создание учебных презентация',
              'Верстка и иллюстрирование рабочих тетрадей',
              'Редизайн шрифта Propisi',
            ],
          ),
          const SizedBox(height: 20),
          _buildJobExperience(
            context,
            title: 'Иллюстратор (post-production)',
            company: 'Онлайн школа Интернет урок',
            period: '(апрель 2025 – настоящее время)',
            duties: [
              'Создание графики для видео-уроков',
              'Подготовка графики к анимации',
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildJobExperience(
    BuildContext context, {
    required String title,
    required String company,
    required String period,
    required List<String> duties,
  }) {
    final textTheme = Theme.of(context).textTheme;
    final primaryColor = Theme.of(context).primaryColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: textTheme.titleLarge?.copyWith(color: primaryColor)),
        const SizedBox(height: 5),
        Text('$company\n$period', style: textTheme.bodyLarge),
        const SizedBox(height: 10),
        ...duties.map(
          (duty) => Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('• ', style: TextStyle(fontSize: 16)),
                Expanded(child: Text(duty, style: textTheme.bodyMedium)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
