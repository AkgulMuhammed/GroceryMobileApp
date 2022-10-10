import 'package:flutter/material.dart';

import 'package:market_s/pages/detail_page.dart';
import 'package:market_s/widgets/shadow_icon.dart';
import 'package:market_s/widgets/text_large_bold.dart';
import 'package:market_s/widgets/text_small_grey.dart';

import '../constants/constants.dart';

class itemCard extends StatelessWidget {
  const itemCard({
    Key? key, required this.image, required this.fruitName, required this.objectWeight,
  }) : super(key: key);
  final String image;
  final String fruitName;
  final String objectWeight;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20 ),
      child: GestureDetector(
        onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => GroceryDetail(),
            ));},
        child: SizedBox(
            height: MediaQuery.of(context).size.height / 4.5,
            width: MediaQuery.of(context).size.width / 2,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: GrecroyConstants.borderRadiusCircular20),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 5,  left: 10, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 6,
                      child: Center(
                          child: Image.asset(image)),
                    ),
                    Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextLargeBold(text: fruitName, size: 17),
          GrecroyConstants.sizedBoxHeight5,
          TextSmallGrey(
            text: objectWeight,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_priceText(), shadowIcon(icons: Icons.add)],
          ),
        ],
          ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

Row _priceText() {
    return Row(
      children: [
        TextLargeBold(text: GrecroyConstants.text_price, size: 18),
        GrecroyConstants.sizedBoxWidth5,
        Text(
          GrecroyConstants.text_price_line,
          style: TextStyle(
            color: GrecroyConstants.colorDarkGrey,
            decoration: TextDecoration.lineThrough,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness: 3,
          ),
        ),
      ],
    );
  }