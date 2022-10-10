import 'package:flutter/material.dart';

import '../constants/constants.dart';

class elevatedButtonlive extends StatelessWidget {
  const elevatedButtonlive({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String text;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size.fromHeight(45),
            shape: RoundedRectangleBorder(
                borderRadius: GrecroyConstants.borderRadiusCircular50)),
        onPressed: onPressed,
        child: Center(child: Text(text)));
  }
}
