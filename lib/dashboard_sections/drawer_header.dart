import 'package:definitely_not_twitter/palette.dart';
import 'package:flutter/widgets.dart';

class DashDrawerHeader extends StatelessWidget {
  final Icon image;
  final String name;
  final String account;
  final int following;
  final int followers;

  const DashDrawerHeader(
      {Key? key,
      required this.image,
      required this.name,
      required this.account,
      required this.following,
      required this.followers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(200)),
            child: image,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Palette.olive,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Row(
              children: [
                Expanded(
                    child: Text("@$account",
                        style: const TextStyle(
                          color: Palette.gray,
                        ))),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(following.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Palette.olive,
                      )),
                  const Text(" Following",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Palette.gray,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(followers.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Palette.olive,
                        )),
                  ),
                  const Text(" Followers",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Palette.gray,
                      )),
                ],
              )),
        ],
      ),
    );
  }
}
