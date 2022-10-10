import 'package:flutter/material.dart';
import 'package:market_s/constants/constants.dart';



class TextSmallBlack extends StatelessWidget {
  const TextSmallBlack({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: GrecroyConstants.colorBlack,
            fontSize: 16,
            //fontWeight: FontWeight.bold
          ),
    );
  }
}
