import 'package:flutter/material.dart';
import 'package:todoapp/appstyle/color_palette.dart';
import 'package:todoapp/widgets/cards/primary_card.dart';

import 'package:todoapp/widgets/text/primary_text.dart';
import 'package:todoapp/widgets/text/secondary_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            PrimaryText(
              text: "Hello Fillipe",
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            const Spacer(),
            const Icon(Icons.settings, color: AppColorPallete.smoothGrey)
          ],
        ),
        SecondaryText(
          text: "22 items not completed",
          fontWeight: FontWeight.bold,
        ),
        const Padding(padding: EdgeInsets.only(bottom: 40)),
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          children: [
            PrimaryCard(
                titleText: "Work",
                tasksNumber: 3,
                icon: const Icon(
                  Icons.work,
                  color: AppColorPallete.purple,
                  size: 18,
                ),
                boxColor: AppColorPallete.lightPurple),
            PrimaryCard(
                titleText: "Personal",
                tasksNumber: 2,
                icon: const Icon(
                  Icons.person,
                  color: AppColorPallete.blueAccent,
                  size: 18,
                ),
                boxColor: AppColorPallete.lightBlue),
            PrimaryCard(
                titleText: "Life",
                tasksNumber: 8,
                icon: const Icon(
                  Icons.favorite,
                  color: AppColorPallete.pinkAccent,
                  size: 18,
                ),
                boxColor: AppColorPallete.lightPink),
            PrimaryCard(
                titleText: "Stroke",
                tasksNumber: 4,
                icon: const Icon(
                  Icons.location_on,
                  color: AppColorPallete.yellowAccent,
                  size: 18,
                ),
                boxColor: AppColorPallete.lightYellow),
          ],
        ),
        const Card(
          elevation: 1,
          child: SizedBox(
            height: 50,
            child: Icon(Icons.add, color: AppColorPallete.smoothGrey),
          ),
        )
      ],
    );
  }
}
