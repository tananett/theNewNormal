import 'package:flutter/material.dart';
import 'package:theNewNormal/Elements/constant.dart';
import 'package:theNewNormal/screens/placeScreen.dart';

class CateScreen extends StatelessWidget {
  final cateCardWidth = 200.0;
  final cateCardHeight = 200.0;

  @override
  Widget build(BuildContext context) {
    var deviceSizeWidth = MediaQuery.of(context).size.width;
    var deviceSizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              //Logo and setting icon
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black12),
                        child: Icon(Icons.map, color: Colors.red)),
                    Text('App Name', style: headerTextStyle),
                    InkWell(
                      onTap: () {
                        print('height: ' +
                            MediaQuery.of(context).size.height.toString());
                        print('width: ' +
                            MediaQuery.of(context).size.width.toString());
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Back',
                        style: headerTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              // Search Bar
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    shadowSearchBox,
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search Here', border: InputBorder.none),
                ),
              ),
            ],
          ),
///////////////////////////////////////////////Space
          Positioned(
            top: 150,
            child: Container(
              width: deviceSizeWidth < 600 ? 220.0 * 2 : 220.0 * 3,
              height: 800,
              child: GridView.count(
                crossAxisCount: deviceSizeWidth < 600 ? 2 : 3,
                children: [
                  InkWell(
                    child: cateCard(0),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlaceScreen()));
                    },
                  ),
                  cateCard(1),
                  cateCard(2),
                  cateCard(3),
                  cateCard(4),
                  cateCard(5),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  shadowListTile,
                ],
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.fastfood,
                  color: Colors.purple,
                  size: 40,
                ),
                title: Text(
                  'Canteen',
                  style: normalTextStyle,
                ),
                subtitle: Text(
                  '3 Places',
                  style: normalTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container cateCard(int index) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              boxShadow: [
                shadowListTile,
              ],
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
              boxShadow: [
                shadowListTile,
              ],
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
