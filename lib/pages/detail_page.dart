import 'package:flutter/material.dart';
import 'package:market_s/constants/constants.dart';
import 'package:market_s/widgets/elevated_button.dart';
import 'package:market_s/widgets/shadow_icon.dart';
import 'package:market_s/widgets/shadow_icon_color.dart';
import 'package:market_s/widgets/text_large_bold.dart';
import 'package:market_s/widgets/text_small_black.dart';
import 'package:market_s/widgets/text_small_bold.dart';
import 'package:market_s/widgets/text_small_grey.dart';

class GroceryDetail extends StatelessWidget {
  const GroceryDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: GrecroyConstants.colorWhite,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Scaffold(
          backgroundColor: GrecroyConstants.colorWhite,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 5, right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _Stack(),
                      GrecroyConstants.sizedBoxHeight20,
                      TextLargeBold(
                          text: GrecroyConstants.itemCardImageNamecarrot,
                          size: 25),
                      GrecroyConstants.sizedBoxHeight10,
                      _rowDolarTextIcon(),
                      GrecroyConstants.sizedBoxHeight10,
                      TextSmallBold(text: GrecroyConstants.info_title),
                      GrecroyConstants.sizedBoxWidth15,
                      _textsGrey(),
                      GrecroyConstants.sizedBoxHeight10,
                      TextLargeBold(
                          text: GrecroyConstants.info_menu, size: 20),
                      GrecroyConstants.sizedBoxHeight10,
                      _rowColumnRelatedItems(),
                      GrecroyConstants.sizedBoxHeight10
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      elevatedButtonlive(
                        text: GrecroyConstants.info_cardAdd,
                        onPressed: () {},
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row _rowColumnRelatedItems() {
    return Row(
      children: [
        columnMiniContainerText(
            image: GrecroyConstants.cardItemAubergine,
            text: GrecroyConstants.itemCardImageNameAubergine),
        
        columnMiniContainerText(
            image: GrecroyConstants.cardItemLettuce,
            text: GrecroyConstants.itemCardImageNamelettuce),
        GrecroyConstants.sizedBoxWidth5,
        columnMiniContainerText(
            image: GrecroyConstants.cardItemPear,
            text: GrecroyConstants.itemCardImageNamepear),
        GrecroyConstants.sizedBoxWidth5,
        columnMiniContainerText(
            image: GrecroyConstants.cardItemGarlic,
            text: GrecroyConstants.itemCardImageNamegarlic),
      ],
    );
  }

  Column _textsGrey() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
         GrecroyConstants.sizedBoxHeight5,
        TextSmallGrey(text: GrecroyConstants.detail_text_lorem_grey),
        GrecroyConstants.sizedBoxHeight5,
       
        ],
    );
  }

  Row _rowDolarTextIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_rowTexts(), _rowConatinerkgIcon()],
    );
  }

  Row _rowTexts() {
    return Row(
      children: [
        TextSmallBlack(
          text: GrecroyConstants.text_price,
        ),
        GrecroyConstants.sizedBoxWidth20,
        Text(
          GrecroyConstants.text_price_line,
          style: TextStyle(
            color: GrecroyConstants.colorDarkGrey,
            decoration: TextDecoration.lineThrough,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness: 2,
          ),
        ),
      ],
    );
  }

  Row _rowConatinerkgIcon() {
    return Row(
      children: [
        const shadowIconColor(
            icons: Icons.remove_outlined, color: GrecroyConstants.colorGreen),
        GrecroyConstants.sizedBoxWidth5,
        const TextSmallGrey(text: GrecroyConstants.itemCardImageCarrotWeight),
        GrecroyConstants.sizedBoxWidth5,
        const shadowIconColor(
            icons: Icons.add, color: GrecroyConstants.colorGreen)
      ],
    );
  }

  Stack _Stack() {
    return Stack(
      children: [
        _stackImage(),
        shadowIcon(icons: Icons.arrow_back_ios_new,onPressed: () {
          
        },),
        _rightContainerIcon()
      ],
    );
  }

  Positioned _rightContainerIcon() {
    return Positioned(right: 0, child: shadowIcon(icons: Icons.search));
  }

  Image _stackImage() =>
      Image.asset(GrecroyConstants.detailPageImage, fit: BoxFit.cover);
}

class columnMiniContainerText extends StatelessWidget {
  const columnMiniContainerText({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 7,
            height: MediaQuery.of(context).size.height / 14,
            decoration: BoxDecoration(
              borderRadius: GrecroyConstants.borderRadiusCircular20,
              color: GrecroyConstants.colorWhite,
            ),
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
          GrecroyConstants.sizedBoxHeight5,
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: GrecroyConstants.colorDarkGrey, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
