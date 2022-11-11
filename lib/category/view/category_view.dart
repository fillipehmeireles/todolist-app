import 'package:flutter/material.dart';
import 'package:todoapp/appstyle/color_palette.dart';
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
        Card(
          elevation: 1,
          child: CheckboxListTile(
            value: false,
            onChanged: null,
            title: PrimaryText(
              text: "Combing the hole design process",
              fontSize: 22,
            ),
            subtitle: SecondaryText(text: "Design"),
            controlAffinity: ListTileControlAffinity.leading,
            checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                side: BorderSide(color: categoryColor)),
            checkColor: categoryColor,
          ),
        )
      ],
    );
  }
}
