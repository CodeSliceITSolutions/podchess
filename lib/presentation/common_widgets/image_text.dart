import 'package:flutter/material.dart';

class ImageText extends StatelessWidget {
  const ImageText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineMedium);
  }
}
