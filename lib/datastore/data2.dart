import 'package:e_lab/datastore/data1.dart';
import 'package:flutter/material.dart';

import '../homepage.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final formKey = GlobalKey<FormState>(); //key for form

  @override
  TextEditingController textEditingControllercontroller =
  TextEditingController();
  Widget build(BuildContext context) {
    String Handingperson = "";
    String Estimatedate= "";
    String Time = "";
    final _conHandingperson = TextEditingController();
    final _conEstimatedate= TextEditingController();
    final _contime = TextEditingController();

    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
      body:
      Container(
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
                        controller:_conHandingperson ,
                        decoration: InputDecoration(
                          hintText: 'Handingperson',
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        controller: _conEstimatedate,
                        decoration: InputDecoration(
                          hintText: 'Estimatedate',
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        controller: _contime,
                        decoration: InputDecoration(
                          hintText: 'Time',
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

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=> homepage()));
        },
        backgroundColor: Colors.green[900],
        foregroundColor: Colors.black,
        label: const Text('Submit'),


      ),
    );
  }
}
