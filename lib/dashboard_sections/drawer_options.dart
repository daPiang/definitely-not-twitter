import 'package:definitely_not_twitter/palette.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/widgets/icon.dart';

class DrawerOptions extends StatelessWidget {
  final Icon icon;
  final String label;

  const DrawerOptions({Key? key, required this.icon, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(label, style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Palette.gray,
            fontSize: 20,
          )),
        ),

      ]
    );
  }
}