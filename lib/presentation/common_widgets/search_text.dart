import 'package:flutter/material.dart';

class NeoText extends StatelessWidget {
  final String text;

  const NeoText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodySmall);
  }
}
