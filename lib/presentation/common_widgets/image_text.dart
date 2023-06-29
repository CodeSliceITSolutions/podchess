import 'package:flutter/material.dart';

class ImageText extends StatelessWidget {
  final String text;

  const ImageText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineMedium);
  }
}
