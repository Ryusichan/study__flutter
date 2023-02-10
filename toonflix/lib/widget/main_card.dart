import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final String title;
  final String value;
  final String currency;
  final bool isInvert;
  final IconData icon;
  final _whiteColor = const Color(0xFFFFFFFF);
  final _blackColor = const Color(0xFF1f2123);

  const MainCard({
    super.key,
    required this.title,
    required this.value,
    required this.currency,
    required this.isInvert,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInvert ? _blackColor : _whiteColor,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: isInvert ? _whiteColor : _blackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 24),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      value,
                      style: TextStyle(
                          color: isInvert ? _whiteColor : _blackColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      currency,
                      style: TextStyle(
                          color: isInvert
                              ? _whiteColor.withOpacity(0.7)
                              : _blackColor.withOpacity(0.7),
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2,
              child: Transform.translate(
                offset: const Offset(6, 10),
                child: Icon(
                  icon,
                  size: 68,
                  color: isInvert ? _whiteColor : _blackColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
