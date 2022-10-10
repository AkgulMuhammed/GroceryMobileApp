import 'package:flutter/material.dart';
import 'package:market_s/constants/constants.dart';



class TextSmallBold extends StatelessWidget {
  const TextSmallBold({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline6?.copyWith(
            color: GrecroyConstants.colorBlack,
            fontWeight: FontWeight.w600,
          ),
    );
  }
}
