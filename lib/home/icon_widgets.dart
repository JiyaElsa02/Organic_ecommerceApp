import 'package:flutter/cupertino.dart';

class IconWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final Color iconColor;
  const IconWidget(
      {super.key,
      required this.icon,
      required this.text,
      required this.color,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(
          width: 5,
        ),
        //use smalltext
        Text(text),
      ],
    );
  }
}
