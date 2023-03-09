import 'package:flutter/material.dart';


var myDefultBackground =  Colors.grey[300];

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: const [
      UserAccountsDrawerHeader(
        accountName: Text('Leo'),
        accountEmail: Text('leo@gmail.com'),
        currentAccountPicture: CircleAvatar(
          backgroundImage: AssetImage('assets/images/leo1.png'),
        ),
        decoration: BoxDecoration(color: Colors.cyan),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Dashboad'),
      ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text('Messages'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('Logout'),
      )
    ],
  ),
);
