import 'package:e_lab/datastore/data1.dart';
import 'package:flutter/material.dart';

class Data extends StatefulWidget {
  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  final formKey = GlobalKey<FormState>(); //key for form

  @override
  TextEditingController textEditingControllercontroller =
      TextEditingController();
  Widget build(BuildContext context) {
    String Name = "";
    String PhoneNo = "";
    String vehicle = "";
    String place = "";
    String DOS = "";
    final _conName = TextEditingController();
    final _conphoneNo= TextEditingController();
    final _convehicle = TextEditingController();
    final _conplace= TextEditingController();
    final _conDOS = TextEditingController();

    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;

    return Scaffold(
        key: _scaffoldKey,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                Colors.white10,
                Colors.white10,
              ])),

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
                        controller: _conphoneNo,
                        decoration: InputDecoration(
                          hintText: 'Phone No',
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        controller: _convehicle,
                        decoration: InputDecoration(
                          hintText: 'Vehicle',
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        controller: _conplace,
                        decoration: InputDecoration(
                          hintText: 'Place',
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        controller: _conDOS,
                        decoration: InputDecoration(
                          hintText: 'DOS',
                        ),
                      ),
                    )
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
