import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CardWidgets extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onTap;

  const CardWidgets({super.key, required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
      child: InkWell(
        onTap: () {
          
        },
        child: Card(
          child: ListTile(
            title: Text(
              title,
              // textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF171515),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            leading: SvgPicture.asset(icon),
          ),
        ),
      ),
    );
  }
}
