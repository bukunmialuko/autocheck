import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  final bool? shoBackButton;
  final bool? showOtherIcons;
  final String title;
  const CustomAppBarWidget({
    Key? key,
    this.shoBackButton,
    this.showOtherIcons,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          (shoBackButton == null)
              ? Container()
              : Icon(
                  Icons.chevron_left_sharp,
                  size: 34,
                ),
          SizedBox(
            width: 12,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          (showOtherIcons == null)
              ? Container()
              : Icon(
                  Icons.chevron_left_sharp,
                  size: 34,
                ),
          SizedBox(
            width: 12,
          ),
          (showOtherIcons == null)
              ? Container()
              : Icon(
                  Icons.chevron_left_sharp,
                  size: 34,
                ),
          SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }
}
