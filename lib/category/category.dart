import 'package:flutter/material.dart';
import 'package:todoapp/appstyle/color_palette.dart';
import 'package:todoapp/category/view/category_view.dart';

class Category extends StatelessWidget {
  const Category(
      {super.key, required this.categoryID, required this.categoryColor});

  final String categoryID;
  final Color categoryColor;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_sharp,
              color: AppColorPallete.deepBlue,
              size: 28,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            '$categoryID list',
            style: const TextStyle(color: AppColorPallete.deepBlue),
          ),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.person,
              color: AppColorPallete.deepBlue,
            )
          ],
          backgroundColor: Colors.transparent,
        ),
        body: CategoryView(
          categoryColor: categoryColor,
        ),
      );
}
