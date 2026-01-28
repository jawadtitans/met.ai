import 'package:flutter/material.dart';

// Main black button
class MainButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const MainButton({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,

          highlightColor: Colors.white30.withOpacity(0.7),
        ),
        child: InkWell(
          highlightColor: Colors.white30.withOpacity(0.6),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              overlayColor: Colors.white.withOpacity(0.0),
              splashFactory: InkRipple.splashFactory,

              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
