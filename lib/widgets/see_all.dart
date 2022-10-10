import 'package:flutter/material.dart';

import '../constants/constants.dart';

class seeAll extends StatelessWidget {
  const seeAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(GrecroyConstants.homePageSee,style: TextStyle(color: GrecroyConstants.colorGreen),);
  }
}

