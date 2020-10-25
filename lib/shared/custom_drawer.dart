import 'package:body_coach/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  //static const routeName = '/routeName'; //for navigation route
  //bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    var _mq = MediaQuery.of(context).size;
    return DrawerHeader(
      child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
//      mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                width: 190.0,
                height: 190.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blueAccent,
                    width: 4,
                  ),
                  image: new DecorationImage(
                    fit: BoxFit.cover,
                    image: new AssetImage('assets/trainer/bg3.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: new Text("RS Doe", textScaleFactor: 1.5),
              )
            ],
          ),
          Divider(),
          ListTile(
            title: Text(
              'My Workouts',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'My Subscriptions',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'My Diet',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Trainer',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => HomeScreen(),
                ),
              );
              //isTapped = !isTapped;
            },
            title: Text(
              'Logout',
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
          ),
          Divider(),
          SizedBox(
            height: _mq.height * 0.12,
          ),
          Center(
            child: Image.asset(
              "assets/icons/BodyCo_Logo_Charcoal.png",
              height: 25.0,
              width: _mq.height * 0.25,
            ),
          )
        ],
      ),
    );
  }
}
