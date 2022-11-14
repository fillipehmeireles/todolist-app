import 'package:flutter/material.dart';

import '../../appstyle/color_palette.dart';
import '../text/primary_text.dart';
import '../text/secondary_text.dart';

class PrimaryListCard extends Container {
  PrimaryListCard(
      {super.key,
      required String title,
      required String category,
      String? datetime})
      : super(
          decoration: const BoxDecoration(
              border: Border(
            bottom: BorderSide(color: AppColorPallete.creamWhite),
          )),
          child: ListTile(
            contentPadding: const EdgeInsets.all(16),
            tileColor: Colors.white,
            subtitle: PrimaryText(
              text: title,
              fontSize: 18,
            ),
            title: SecondaryText(
              text: category,
              fontSize: 12,
              fontStyle: FontStyle.italic,
            ),
            leading: Container(
              decoration: const BoxDecoration(
                border: Border(
                    right: BorderSide(color: AppColorPallete.creamWhite)),
              ),
              child: const Checkbox(
                shape: CircleBorder(),
                onChanged: null,
                value: false,
              ),
            ),
            trailing: SizedBox(
              child: SecondaryText(
                text: datetime ?? '',
                fontSize: 12,
              ),
            ),
          ),
        );
}
