import 'package:flutter/material.dart';

import '../constants/constants.dart';

class shadowIconColor extends StatelessWidget {
  const shadowIconColor({
    Key? key,
    required this.icons,
    required this.color,
  }) : super(key: key);
  final Color color;
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      child: ClipOval(
        child: Material(
          color: color, // button color
          child: InkWell(
            splashColor: GrecroyConstants.colorGreenOne, // inkwell color
            child: SizedBox(
              width: 30,
              height: 30,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  icons,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
