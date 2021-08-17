import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:fluttersampleapp/dataArray.dart';
import 'dart:math' as math;

import 'card.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  int currentPage = 0;
  PageController controller = PageController();
  var currentPageValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Container(
          //Card
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.6,
          child: PageView.builder(
            controller: controller,
            itemBuilder: (context, index) {
              if (index == currentPageValue.floor()) {
                return Transform(
                  transform: Matrix4.identity()
                    ..rotateX((currentPageValue - index)),
                  child: Opacity(
                    opacity: currentPage == index ? 1.0 : 0.8,
                    child: CardCarousel(
                      card: cards[index],
                    ),
                  ),
                );
              } else if (index == currentPageValue.floor() + 1) {
                return Transform(
                  transform: Matrix4.identity()
                    ..rotateX((currentPageValue - index)),
                  child: Opacity(
                    opacity: currentPage == index ? 1.0 : 0.8,
                    child: CardCarousel(
                      card: cards[index],
                    ),
                  ),
                );
              } else {
                return Opacity(
                  opacity: currentPageValue == index ? 1.0 : 0.8,
                  child: CardCarousel(
                    card: cards[index],
                  ),
                );
              }
            },
            physics: BouncingScrollPhysics(),
            itemCount: cards.length,
            onPageChanged: (index) {
              controller.addListener(() {
                setState(() {
                  currentPageValue = controller.page ?? 0;
                });
              });
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: updateIndicators(),
        ),
        Column(
          children: [
            Text(
              'Shelby Gold',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Text('Flutter Developer'),
                ],
              ),
            ),
            Text('385-888-2998')
          ],
        ),
        Spacer()
      ],
    );
  }

  Widget updateIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: cards.map(
        (car) {
          var index = cards.indexOf(car);
          return Container(
            width: 25,
            height: 10.0,
            margin: EdgeInsets.symmetric(horizontal: 6.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentPage == index
                  ? Colors.lightBlueAccent
                  : Colors.black12,
            ),
          );
        },
      ).toList(),
    );
  }
}
