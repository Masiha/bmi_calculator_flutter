import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {Key? key, required this.cardColor, this.cardChild, this.onPress})
      : super(key: key);

  final Color cardColor;
  final Widget? cardChild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
