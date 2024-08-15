import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

const Uuid uuid = Uuid();

final DateFormat dateFormatter = DateFormat.yMd();

enum Category {
  food,
  leisure,
  travel,
  work;
}

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();
  String get formattedDate {
    return dateFormatter.format(date);
  }
}
