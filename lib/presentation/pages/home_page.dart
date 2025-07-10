import 'package:flutter/material.dart';
import 'package:summary_vikaefrb/presentation/widgets/contacts_widget.dart';
import 'package:summary_vikaefrb/presentation/widgets/experience_widget.dart';
import 'package:summary_vikaefrb/presentation/widgets/header_widget.dart';
import 'package:summary_vikaefrb/presentation/widgets/portfolio_widget.dart';
import 'package:summary_vikaefrb/presentation/widgets/skills_widget.dart';
import 'package:summary_vikaefrb/presentation/widgets/tools_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1400),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  HeaderWidget(),
                  SizedBox(height: 20),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(child: ExperienceWidget()),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            children: [
                              SkillsWidget(),
                              Expanded(
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(minHeight: 20),
                                ),
                              ),
                              ToolsWidget(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ContactsWidget(),
                  SizedBox(height: 20),
                  PortfolioWidget(),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
