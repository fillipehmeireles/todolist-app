part of 'category_view.dart';

class _AddEventsView extends StatelessWidget {
  const _AddEventsView();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PrimaryText(
              text: "Add events",
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            const Spacer(),
            const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.add,
                  color: AppColorPallete.deepBlue,
                  size: 28,
                ))
          ],
        ),
      );
}
