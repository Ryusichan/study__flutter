import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;

  const MainButton({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(36),
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 14,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          )),
    );
  }
}
