import 'package:e_lab/datastore/data.dart';
import 'package:e_lab/home.dart';
import 'package:flutter/material.dart';

import 'billing/billing.dart';
import 'e-store/store1.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.local_print_shop_sharp),
            tooltip: 'billing',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=> Billing1()));
            },

          ),
          IconButton(
            icon: const Icon(Icons.local_grocery_store_outlined),
            tooltip: 'E-store',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=> Store1()));
            },

          ),
        ],
      ),
      body:Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:Column(
                children:[
                  SizedBox(
                    height: 550,
                  ),
                ]
            ),
          ),


        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green[900],
              ),
              accountName: Text(''),
              accountEmail: Text("fairoos@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black12,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home), title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.import_contacts), title: Text("Import contact"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Data()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings), title: Text("Settings"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Data()));
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts), title: Text("Contact Us"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Data()));
              },
            ),
            SizedBox(
              height: 280,
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined), title: Text("LogOut"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Data()));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=> Home()));
        },
        backgroundColor: Colors.green[900],
        foregroundColor: Colors.black,
        child: Icon(Icons.add ),

      ),
    );
  }}






