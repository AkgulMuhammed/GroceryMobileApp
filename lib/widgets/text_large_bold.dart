import 'package:flutter/material.dart';
import 'package:market_s/constants/constants.dart';



class TextLargeBold extends StatelessWidget {
  const TextLargeBold({super.key, required this.text, required this.size});

  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline2?.copyWith(
          color: GrecroyConstants.colorBlack,
          fontWeight: FontWeight.bold,
          fontSize: size),
    );
  }
}
