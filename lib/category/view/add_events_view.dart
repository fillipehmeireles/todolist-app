part of 'category_view.dart';

class _AddEventsView extends StatelessWidget {
  const _AddEventsView();
  void _showDialog(context) => showDialog(
      context: context,
      builder: (BuildContext context) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            // backgroundColor: ColorResources.BLACK_ALPHA_65,
            child: const SizedBox(
                height: 40, child: AlertDialog(content: Text("hi"))),
          )));
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
            IconButton(
                onPressed: () => _showDialog(context),
                icon: const Icon(
                  Icons.add,
                  color: AppColorPallete.deepBlue,
                  size: 28,
                ))
          ],
        ),
      );
}
