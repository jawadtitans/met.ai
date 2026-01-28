import 'package:flutter/material.dart';

import 'fadeanimation_new.dart';
import 'model.dart';
//  this is the main oprtionn for this in her adnthois n

Widget buildAnswerOption(Answer answer, int delay) {
  return FadeSlideAnimation(
    delay: delay * 0.2,
    child: GestureDetector(
      onTap: () {
        print('Tapped: ${answer.title}');
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 18),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 19),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (answer.avatar != null)
              CircleAvatar(backgroundImage: AssetImage(answer.avatar!)),
            if (answer.avatar != null) SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    answer.title,
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  if (answer.subtitle != null)
                    Text(
                      answer.subtitle!,
                      style: TextStyle(fontSize: 12, color: Colors.black45),
                    ),
                ],
              ),
            ),
            if (answer.icon != null) Icon(answer.icon, color: Colors.black87),
          ],
        ),
      ),
    ),
  );
}
