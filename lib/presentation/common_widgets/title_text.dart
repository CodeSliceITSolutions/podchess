import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(color: Theme.of(context).canvasColor));
  }
}
