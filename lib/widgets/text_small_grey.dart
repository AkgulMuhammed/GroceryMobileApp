import 'package:flutter/material.dart';
import 'package:market_s/constants/constants.dart';



class TextSmallGrey extends StatelessWidget {
  const TextSmallGrey({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: GrecroyConstants.colorgrey,
            fontSize: 15,
            //fontWeight: FontWeight.bold
          ),
    );
  }
}
