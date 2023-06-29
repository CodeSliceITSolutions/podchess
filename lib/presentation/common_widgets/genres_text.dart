import 'package:flutter/material.dart';

class GenresText extends StatelessWidget {
  final String text;

  const GenresText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodyMedium);
  }
}
