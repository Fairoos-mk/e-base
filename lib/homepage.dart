import 'package:e_lab/datastore/data.dart';
import 'package:flutter/material.dart';


class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:Column(
                children:[
                  SizedBox(
                    height: 550,
                  ),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        print('Login');
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Data()));
                      },
                      child: Text(
                        'E-Spot',
                        style:
                        TextStyle(color: Colors.black),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green[900],
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  SizedBox(
                    height: 0.01 ,
                  ),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        print('Login');
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Data()));
                      },
                      child: Text(
                        'E-lab',
                        style:
                        TextStyle(color: Colors.black),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green[900],
                      borderRadius: BorderRadius.circular(30.0),
                    ),
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
                Navigator.pop(context);
              },
            ),ListTile(
              leading: Icon(Icons.security), title: Text("Security"),
              onTap: () {
                Navigator.pop(context);
              },
            ),ListTile(
              leading: Icon(Icons.home), title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),ListTile(
              leading: Icon(Icons.share), title: Text("Share"),
              onTap: () {
                Navigator.pop(context);
              },
            ),ListTile(
              leading: Icon(Icons.save_alt), title: Text("Save"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings), title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts), title: Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

    );
  }}






