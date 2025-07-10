import 'package:flutter/material.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    const skills = [
      'Создание векторных иллюстраций',
      'Верстка полиграфической продукции',
      'Работа с гайдлайном',
      'Создание графики для пост-продакшена',
      'Разработка шрифтов',
      'Рисование растровых иллюстраций',
      'Подготовка персонажей к анимации',
    ];

    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Навыки', style: textTheme.headlineMedium),
          const SizedBox(height: 20),
          ...skills.map(
            (skill) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Text('• $skill', style: textTheme.bodyMedium),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
