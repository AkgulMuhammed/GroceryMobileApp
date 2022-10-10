import 'package:flutter/material.dart';
import 'package:market_s/constants/constants.dart';


class ContainerBacgroundWhite extends StatelessWidget {
  const ContainerBacgroundWhite({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 18,
      width: MediaQuery.of(context).size.width / 8,
      decoration: BoxDecoration(
          borderRadius: GrecroyConstants.borderRadiusCircular50,
          color: GrecroyConstants.colorWhite),
      child: widget,
    );
  }
}
