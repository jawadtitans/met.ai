import 'package:flutter/material.dart';

class titles_intro extends StatelessWidget {
  final String title, subtitle;
  final Color? color_text;
  final double titlesize, subtitle_size;
  final int flex_space;
  final int max_lines;
  final bool? is_center;
  const titles_intro({
    super.key,
    required this.title,
    required this.flex_space,
    required this.max_lines,
    this.is_center,
    required this.subtitle,
    required this.titlesize,
    required this.subtitle_size,
    this.color_text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            maxLines: max_lines,

            title,
            style: TextStyle(
              fontSize: titlesize,
              fontWeight: FontWeight.w800,
              color: color_text,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26),
            child: Text(
              subtitle,
              maxLines: max_lines,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: subtitle_size,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
