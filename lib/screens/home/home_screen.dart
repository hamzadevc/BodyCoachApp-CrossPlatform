import 'package:body_coach/screens/home/components/category_card/category_list.dart';
import 'package:body_coach/screens/home/components/featured/featured_list.dart';
import 'package:body_coach/screens/home/components/title_see_all_strap.dart';
import 'package:body_coach/shared/constants.dart';
import 'package:body_coach/shared/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = new GlobalKey();
    return Scaffold(
      key: _drawerKey,
      drawer: Drawer(
        child: CustomDrawer(),
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _drawerKey.currentState.openDrawer();
          },
          icon: Icon(Icons.sort),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 10.0),
            child: Image(
              height: 40.0,
              width: 40.0,
              image: AssetImage(pPerson),
            ),
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              Text(
                "Hey Alex,",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
              ),
              SizedBox(height: 15.0),
              Text(
               kHomeDescription,
                style: TextStyle(fontSize: 22.0, color: Color(0xFF61688B)),
              ),
              Container(
                margin: EdgeInsets.only(top: 35.0),
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 15.0),
                height: 60.0,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F5F7),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 30.0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5.0),
                      width: MediaQuery.of(context).size.width - 110,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: kSearch,
                            hintStyle: TextStyle(fontSize: 18.0)),
                      ),
                    )
                  ],
                ),
              ),
              SeeAll(
                onTap: () => print('See All Categories'),
                title: kCat,
              ),
              CategoryList(),
              SeeAll(
                onTap: () => print('See All Features'),
                title: kFet,
              ),
              FeaturedList(),
            ],
          ),
        ),
      ),
    );
  }
}
