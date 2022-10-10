import 'package:flutter/material.dart';

import '../constants/constants.dart';

class shadowIcon extends StatelessWidget {
  const shadowIcon({
    Key? key, required this.icons, this.onPressed,
  }) : super(key: key);

  final IconData icons;
   final void Function() ?onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      child: ClipOval(
        child: Material(
          color: Colors.transparent, // button color
          child: InkWell(
            splashColor:
                GrecroyConstants.colorGreenOne, // inkwell color
            child: SizedBox(
              width: 40,
              height: 40,
              child: IconButton(
                onPressed: () {},
                icon:  Icon(
                  icons,
                  color: Colors.grey,
                  size: 25,
                ),
              ),
            ),
            onTap: onPressed,
          ),
        ),
      ),
    );
  }
}
