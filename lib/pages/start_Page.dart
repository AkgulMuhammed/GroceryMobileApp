

import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/elevated_button.dart';
import 'home_Page.dart';



class startPage extends StatelessWidget {
  const startPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: GrecroyConstants.paddingAll,
        child: Container(
          color: GrecroyConstants.colorGreenOne,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 2),
                  Expanded(
                      flex: 2,
                      child: Image.asset(
                        GrecroyConstants.startPageImage,
                      )),
                  const Spacer(flex: 1),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          GrecroyConstants.startPageTitle,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  color: Colors.black,
                                  fontFamily: 'Qwitcher_Grypen',
                                  fontSize: 50,
                                  fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          GrecroyConstants.startPageLabel,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.grey),
                        ),
                        const Spacer(flex: 2),
                        elevatedButtonlive(text: GrecroyConstants.startPageButton, onPressed:() {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: ((context) => homePage())));
        } ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


