import 'package:flutter/material.dart';

import '../constants/constants.dart';

class popularItems extends StatelessWidget {
  const popularItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(GrecroyConstants.homePagePopular,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: GrecroyConstants.colorBlack),);
  }
}
