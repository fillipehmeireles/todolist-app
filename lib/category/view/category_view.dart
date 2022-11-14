import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:todoapp/appstyle/color_palette.dart';
import 'package:todoapp/widgets/cards/primary_list_card.dart';
import 'package:todoapp/widgets/text/primary_text.dart';
import 'package:todoapp/widgets/text/secondary_text.dart';

part 'add_events_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryColor});

  final Color categoryColor;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const _AddEventsView(),
        PrimaryListCard(
          title: 'Combining the hole design process',
          category: 'Design',
          datetime: '15:10 PM',
        ),
        const Padding(padding: EdgeInsets.all(2)),
        PrimaryListCard(
          title: 'Combining the hole design process',
          category: 'Design',
          datetime: '15:10 PM',
        )
      ],
    );
  }
}
