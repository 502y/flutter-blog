import 'package:flutter/material.dart';

class TitleWithDate extends StatelessWidget {
  final String title;
  final DateTime date;
  final BuildContext context;
  const TitleWithDate(
      {super.key,
      required this.title,
      required this.date,
      required this.context});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          "${date.year}/${date.month}/${date.day}",
          style: Theme.of(context).textTheme.labelSmall,
        )
      ],
    );
  }
}
