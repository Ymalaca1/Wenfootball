// ignore_for_file: prefer_const_constructors

import 'package:common_package/common.dart';
import 'package:flutter/material.dart';
import 'package:football_package/src/view/components/carousel_map.dart';

class HelloPage extends StatefulWidget {
  const HelloPage({Key? key}) : super(key: key);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  int carouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _handleBody(),
      ),
    );
  }

  Widget _handleBody() {
    return Container(
      padding: EdgeInsets.all(Spacing.x3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_appBar(), _handleCarousel(), _handleButton()],
      ),
    );
  }

  Widget _appBar() {
    return Text(
      "Wenfootball",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.red,
      ),
    ).headline3();
  }

  Widget _handleButton() {
    return PrincipalButton(
      color: Colors.black,
      text: "Faça seu login!",
      onPressed: () {
        Navigator.of(context).pushNamed(Routes.login);
      },
    );
  }

  Widget _handleCarousel() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: Spacing.x4),
        child: Column(
          children: [_carouselSlider(), _handleCarouselIndicator()],
        ),
      ),
    );
  }

  Widget _carouselSlider() {
    return Expanded(
      child: CarouselSlider(
        options: CarouselOptions(
            viewportFraction: 1.0,
            disableCenter: true,
            onPageChanged: (int index, _) =>
                setState(() => carouselIndex = index)),
        items: List.generate(
            carouselMap.length,
            (index) => _carouselItemBuilder(
                  image: carouselMap[index]["image"],
                  title: carouselMap[index]["title"],
                  onTap: carouselMap[index]["onTap"],
                )),
      ),
    );
  }

  Widget _handleCarouselIndicator() {
    return Container(
      padding: EdgeInsets.only(bottom: Spacing.x5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _indicator(carouselIndex == 0),
          _indicator(carouselIndex == 1),
          _indicator(carouselIndex == 2),
        ],
      ),
    );
  }

  Widget _indicator([bool enabled = false]) {
    return Container(
      height: Spacing.x1,
      width: Spacing.x1,
      margin: EdgeInsets.symmetric(horizontal: Spacing.half),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: enabled ? Colors.red : Colors.black),
    );
  }

  Widget _carouselItemBuilder(
      {required String image,
      required String title,
      Function(BuildContext)? onTap}) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => onTap != null ? onTap(context) : {},
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: Spacing.x3),
            child: Image.asset(
              'assets/svg/$image.png',
              height: 50.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Spacing.half),
            child: Text(
              title,
              textAlign: TextAlign.center,
            ).headline4(),
          ),
        ],
      ),
    );
  }
}
