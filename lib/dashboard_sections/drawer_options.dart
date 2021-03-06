import 'package:definitely_not_twitter/palette.dart';
import 'package:flutter/widgets.dart';

class DrawerOptions extends StatelessWidget {
  final Icon icon;
  final String label;

  const DrawerOptions({Key? key, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: icon,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Palette.gray,
              fontSize: 18,
            )),
      ),
    ]);
  }
}
