import 'package:flutter/material.dart';

class custome_container extends StatelessWidget {
  final IconData icon;
  final double all_padd;
  final double raduies;
  final bool? has_border;
  const custome_container({
    super.key,
    required this.icon,
    required this.all_padd,
    required this.raduies,
    this.has_border,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(highlightColor: Colors.transparent),
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(raduies),
        ),
        padding: EdgeInsets.all(all_padd),
        child: Icon(icon, color: Colors.black26, size: 18),
      ),
    );
  }
}
