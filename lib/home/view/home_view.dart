import 'package:flutter/material.dart';
import 'package:todoapp/appstyle/color_palette.dart';
import 'package:todoapp/category/category.dart';
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
            const IconButton(
                onPressed: null,
                icon: Icon(Icons.settings, color: AppColorPallete.smoothGrey))
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
                key: const Key('work'),
                onPress: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Category(
                          categoryID: 'Work',
                          categoryColor: AppColorPallete.purple,
                        ))),
                titleText: "Work",
                tasksNumber: 3,
                icon: Icons.work,
                iconColor: AppColorPallete.purple,
                boxColor: AppColorPallete.lightPurple),
            PrimaryCard(
                key: const Key('personal'),
                onPress: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Category(
                          categoryID: 'Personal',
                          categoryColor: AppColorPallete.blueAccent,
                        ))),
                titleText: "Personal",
                tasksNumber: 2,
                icon: Icons.person,
                iconColor: AppColorPallete.blueAccent,
                boxColor: AppColorPallete.lightBlue),
            PrimaryCard(
                key: const Key('life'),
                onPress: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Category(
                          categoryID: 'Life',
                          categoryColor: AppColorPallete.pinkAccent,
                        ))),
                titleText: "Life",
                tasksNumber: 8,
                icon: Icons.favorite,
                iconColor: AppColorPallete.pinkAccent,
                boxColor: AppColorPallete.lightPink),
            PrimaryCard(
                key: const Key('stroke'),
                onPress: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Category(
                          categoryID: 'Stroke',
                          categoryColor: AppColorPallete.yellowAccent,
                        ))),
                titleText: "Stroke",
                tasksNumber: 4,
                icon: Icons.location_on,
                iconColor: AppColorPallete.yellowAccent,
                boxColor: AppColorPallete.lightYellow),
          ],
        ),
      ],
    );
  }
}
