import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer {
  final String type; // text, text_subtitle, avatar_text, icon_text
  final String title;
  final String? subtitle;
  final String? avatar;
  final IconData? icon;

  Answer({
    required this.type,
    required this.title,
    this.subtitle,
    this.avatar,
    this.icon,
  });

  factory Answer.fromJson(Map<String, dynamic> json) {
    IconData? iconData;
    if (json['icon'] != null) {
      switch (json['icon']) {
        case 'star':
          iconData = Icons.star;
          break;
        case 'heart':
          iconData = Icons.favorite;
          break;
      }
    }
    return Answer(
      type: json['type'],
      title: json['title'],
      subtitle: json['subtitle'],
      avatar: json['avatar'],
      icon: iconData,
    );
  }
}

class Question {
  final String question;
  final String subtitle;
  final List<Answer> answers;

  Question({
    required this.question,
    required this.subtitle,
    required this.answers,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    var list = (json['answers'] as List)
        .map((e) => Answer.fromJson(e))
        .toList();
    return Question(
      question: json['question'],
      subtitle: json['subtitle'] ?? '',
      answers: list,
    );
  }
}
