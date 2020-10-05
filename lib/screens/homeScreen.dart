import 'package:flutter/material.dart';
import 'package:theNewNormal/Elements/constant.dart';
import 'package:theNewNormal/screens/cateScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
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
                    Icon(
                      Icons.settings,
                      size: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
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
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1.0,
                indent: 10,
                endIndent: 10,
              ),

              //Near You Text
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Near You',
                      style: headerTextStyle,
                    ),
                    Text('Building A - KMITL'),
                  ],
                ),
              ),

              // Near You List
              Container(
                height: 220,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return nearMeCard(index);
                  },
                ),
              ),
              Divider(
                thickness: 1.0,
                indent: 10,
                endIndent: 10,
              ),

              // Browse by Category Text
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Browse by Category', style: headerTextStyle),
                  ],
                ),
              ),

              //List of Category

              //Cate 1
              Container(
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
                  leading: Icon(Icons.fastfood, color: Colors.purple),
                  title: Text(
                    'Canteen',
                    style: normalTextStyle,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CateScreen()));
                  },
                ),
              ),

              //Cate 2
              Container(
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
                    Icons.place,
                    color: Colors.orange,
                  ),
                  title: Text(
                    'Building',
                    style: normalTextStyle,
                  ),
                ),
              ),

              //Cate 3
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 1.0,
                        blurRadius: 6.0,
                        offset: Offset(0, 4)),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.fitness_center,
                    color: Colors.green,
                  ),
                  title: Text('Fitness Center'),
                ),
              ),

              //Cate 4
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 1.0,
                        blurRadius: 6.0,
                        offset: Offset(0, 4)),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.library_books,
                    color: Colors.lightBlue,
                  ),
                  title: Text('Library'),
                ),
              ),
            ],
          ),
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
