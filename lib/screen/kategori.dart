import 'package:flashcard/main.dart';
import 'package:flashcard/screen/kategori1.dart';
import 'package:flutter/material.dart';

class Kategori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final widthRatioCard = screenWidth * 0.4; // 80% dari lebar layar
    final heightRatioCard = screenHeight * 0.3;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 35.0, top: 20, right: 35.0),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenWidth * 0.5,
              height: screenHeight * 0.1,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/asset/logoflashcard.png'),
                    fit: BoxFit.contain),
              ),
            ),
            Container(
              width: double.infinity,
              child: Wrap(
                spacing: screenWidth * 0.03,
                runSpacing: screenHeight * 0.01,
                children: [
                  GestureDetector(
                      child: Container(
                        width: widthRatioCard,
                        height: heightRatioCard,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("lib/asset/kategori/1.png"),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      onTap: () {}),
                  GestureDetector(
                      child: Container(
                    width: widthRatioCard,
                    height: heightRatioCard,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("lib/asset/kategori/2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  )),
                  Container(
                    width: widthRatioCard,
                    height: heightRatioCard,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("lib/asset/kategori/3.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  Container(
                    width: widthRatioCard,
                    height: heightRatioCard,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("lib/asset/kategori/4.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  Container(
                    width: widthRatioCard,
                    height: heightRatioCard,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("lib/asset/kategori/5.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  Container(
                    width: widthRatioCard,
                    height: heightRatioCard,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("lib/asset/kategori/6.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  Container(
                    width: widthRatioCard,
                    height: heightRatioCard,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("lib/asset/kategori/7.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  Container(
                    width: widthRatioCard,
                    height: heightRatioCard,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("lib/asset/kategori/8.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ],
              ),
            ),
          ],
        )),
      )),
    );
  }
}
