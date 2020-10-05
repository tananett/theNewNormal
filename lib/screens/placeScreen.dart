import 'dart:html';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:theNewNormal/Elements/constant.dart';

class PlaceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 55 / 100 * MediaQuery.of(context).size.height,
              color: Colors.green,
              child: Image.asset(
                'images/1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black12),
                  child: Icon(Icons.close)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 50 / 100 * MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.people,
                        color: Colors.red,
                      ),
                      Text(
                        'Busy',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Canteen A',
                    style: headerTextStyle,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Canteen',
                    style: fadeTextStyle,
                  ),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 1.0,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Text('Capacity', style: headerTextStyle),
                  SizedBox(height: 10),
                  LinearPercentIndicator(
                    width: 400.0,
                    lineHeight: 4.0,
                    percent: 0.7,
                    progressColor: Colors.red,
                    alignment: MainAxisAlignment.spaceAround,
                    trailing:
                        Text('70/100', style: TextStyle(color: Colors.red)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'This place is busy.',
                    style: fadeTextStyle,
                  ),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 1.0,
                    indent: 10,
                    endIndent: 10,
                  ),
                  SizedBox(height: 5),
                  Text('Alternative Place', style: headerTextStyle),
                  SizedBox(height: 5),
                  Container(
                    height: 220,
                    child: ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return nearMeCard(index + 1);
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container nearMeCard(int index) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          shadowListTile,
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: ClipRRect(
              child: Image.asset(
                'images/' + (index + 1).toString() + '.jpg',
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
          ),
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 150,
                      child: Text(
                        'Test textbox behavior for long text.',
                        maxLines: 3,
                        //overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.people,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Text(
                    'Canteen',
                    style: TextStyle(color: Colors.black38),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
