import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/my_photo.png', fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 40),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: textTheme.displayLarge?.copyWith(fontSize: 36),
                      children: [
                        const TextSpan(text: 'Привет, меня зовут\n'),
                        TextSpan(
                          text: 'Виктория Бабаченко,\n',
                          style: textTheme.displayMedium?.copyWith(
                            fontSize: 36,
                          ),
                        ),
                        const TextSpan(
                          text: 'я графический дизайнер\nи иллюстратор.',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Основная моя деятельность заключается в создание векторной графики для видео-уроков в компании где я работаю вот уже три года, благодаря этому опыту я умею хорошо структурировать информацию, выделять важное, делать графику понятной и простой для считывания.',
                    style: textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Я много рисую и активно развиваю свои навыки, на данный момент моя основная форма обучения – менторство.',
                    style: textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
