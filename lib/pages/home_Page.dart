import 'package:flutter/material.dart';
import 'package:market_s/constants/constants.dart';
import 'package:market_s/widgets/item_card.dart';
import 'package:market_s/widgets/popular_items.dart';
import 'package:market_s/widgets/see_all.dart';
import 'package:market_s/widgets/shadow_icon.dart';


class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 48, left: 20, right: 20),
          child: _allAppBar(),
        ),
        GrecroyConstants.sizedBoxHeight20,
        _upCard(context),
        GrecroyConstants.sizedBoxHeight20,
        _popularItemsAndSeeAll(),
        GrecroyConstants.sizedBoxHeight20,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
             itemCard(image: GrecroyConstants.cardItemAubergine, fruitName: GrecroyConstants.itemCardImageNameAubergine, objectWeight: GrecroyConstants.itemCardImageAubergineWeight),
             itemCard(image: GrecroyConstants.cardItemCarrot, fruitName: GrecroyConstants.itemCardImageNamecarrot, objectWeight: GrecroyConstants.itemCardImageCarrotWeight),
            ],
          ),
        ),
        GrecroyConstants.sizedBoxHeight20,
        _popularItemsAndSeeAll(),
        GrecroyConstants.sizedBoxHeight20,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
             itemCard(image: GrecroyConstants.cardItemGarlic, fruitName: GrecroyConstants.itemCardImageNamegarlic, objectWeight: GrecroyConstants.itemCardImageGarlicWeight),
             itemCard(image: GrecroyConstants.cardItemLettuce, fruitName: GrecroyConstants.itemCardImageNamelettuce, objectWeight: GrecroyConstants.itemCardImageLettuceWeight),
             itemCard(image: GrecroyConstants.cardItemPear, fruitName: GrecroyConstants.itemCardImageNamepear, objectWeight: GrecroyConstants.itemCardImageCarrotWeight),
            ],
          ),
        ),
      ]),
    );
  }

  Padding _upCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 5,
        child: Card(
          color: GrecroyConstants.colorGreenOne,
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: GrecroyConstants.borderRadiusCircular20),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(flex: 7, child: _cardColumnText(context)),
                  Expanded(
                    flex: 3,
                    child: Image.asset(
                      GrecroyConstants.startPageImage,
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }

  Column _cardColumnText(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          GrecroyConstants.homePageUpCardText,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        GrecroyConstants.sizedBoxHeight10,
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: GrecroyConstants.borderRadiusCircular50)),
              onPressed: () {},
              child: Text(
                'Order Now',
                style: Theme.of(context)
                    .textTheme
                    .button
                    ?.copyWith(color: GrecroyConstants.colorGreen),
              )),
        )
      ],
    );
  }

  Row _allAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_appBarLeft(), shadowIcon(icons: Icons.search_rounded)],
    );
  }

  Row _appBarLeft() {
    return Row(
      children: const [
        shadowIcon(icons: Icons.list),
        SizedBox(width: 10),
        Text(
          'Location',
          style: TextStyle(fontSize: 18, color: GrecroyConstants.colorDarkGrey),
        ),
        SizedBox(width: 5),
        Icon(
          Icons.keyboard_arrow_down_outlined,
          color: GrecroyConstants.colorDarkGrey,
          size: 20,
        )
      ],
    );
  }
}



Padding _popularItemsAndSeeAll() {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [popularItems(), seeAll()],
    ),
  );
}
