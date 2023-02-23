import 'package:e_lab/datastore/data1.dart';
import 'package:flutter/material.dart';

class Store1 extends StatefulWidget {
  @override
  _Store1State createState() => _Store1State();
}

class _Store1State extends State<Store1> {
  final formKey = GlobalKey<FormState>(); //key for form

  @override
  TextEditingController textEditingControllercontroller =
  TextEditingController();
  Widget build(BuildContext context) {
    String Name = "";
    String item= "";
    String stock = "";
    final _conName = TextEditingController();
    final _conitem= TextEditingController();
    final _constock = TextEditingController();

    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        child: ListView(
            children: [
              Form(
                key: formKey, //key for form
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.07),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "E-Lab",
                        style: TextStyle(fontSize: 30, color: Color(0xff1b5e20)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Service cender",
                        style: TextStyle(fontSize: 20, color: Color(0xff1b5e20)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        controller:_conName ,
                        decoration: InputDecoration(
                          hintText: 'Name',
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        controller: _conitem,
                        decoration: InputDecoration(
                          hintText: 'Phone No',
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        controller: _constock,
                        decoration: InputDecoration(
                          hintText: 'Vehicle',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 0.01 ,
              ),
            ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=> Compliant()));
        },
        backgroundColor: Colors.green[900],
        foregroundColor: Colors.black,
        child: Icon(Icons.navigate_next ),

      ),
    );
  }
}
