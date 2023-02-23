import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'data2.dart';

double listOnehight=100;
double listTwohight= 100;
int  ListOneLength = 1;
int  ListTwoLength= 1;
class Compliant extends StatefulWidget {
  @override
  _CompliantState createState() => _CompliantState();
}



class _CompliantState extends State<Compliant> {
  final formKey = GlobalKey<FormState>(); //key for form
  //String complaint  = "";
  bool? check1 = false, check2 = false, check3 = false;
  @override
  TextEditingController textEditingControllercontroller =
  TextEditingController();

  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    double h = 250;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  "Compliant",
                  style: TextStyle(fontSize: 20, color: Color(0xff1b5e20)),
                ),
              ),
              SizedBox(
                height: listOnehight,
                child: Expanded(
                  child: ListView.builder(


                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextField(
                          decoration:
                          InputDecoration(labelText: " ${index + 1}"),
                        ),
                      );
                    },
                    itemCount: ListOneLength,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 300),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        ListOneLength = ListOneLength + 1;
                        listOnehight = listOnehight + 100;
                      });
                    },
                    icon: Icon(Icons.add_circle_outline)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "SpareParts",
                  style: TextStyle(fontSize: 20, color: Color(0xff1b5e20)),
                ),
              ),
              SizedBox(
                height: listTwohight,
                child: Expanded(


                    child: ListView.builder(

                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: TextField(
                            decoration:
                            InputDecoration(labelText: " ${index + 1}"),
                          ),
                        );
                      },
                      itemCount: ListOneLength,
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 300),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        ListTwoLength= ListTwoLength + 1;
                        listTwohight = listTwohight + 100;
                      });
                    },
                    icon: Icon(Icons.add_circle_outline)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Belongs:",
                  style: TextStyle(fontSize: 20, color: Color(0xff1b5e20)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Column(
              //   children: <Widget>[
              SizedBox(
                height: h,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Expanded(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    'Charger ',
                                    style: TextStyle(fontSize: 17.0),
                                  ),
                                  Checkbox(
                                      checkColor: Colors.green[900],
                                      activeColor: Colors.white, //only check box
                                      value: check1, //unchecked
                                      onChanged: (bool? value) {
                                        //value returned when checkbox is clicked
                                        setState(() {
                                          check1 = value;
                                        });
                                      }),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    'Mirror ',
                                    style: TextStyle(fontSize: 17.0),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Checkbox(
                                        checkColor: Colors.green[900],
                                        activeColor: Colors.white,
                                        //only check box
//only check box
                                        value: check2,
                                        //unchecked
                                        onChanged: (bool? value) {
                                          //value returned when checkbox is clicked
                                          setState(() {
                                            check2 = value;
                                          });
                                        }),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    'Mate ',
                                    style: TextStyle(fontSize: 17.0),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Checkbox(
                                        checkColor: Colors.green[900],
                                        activeColor: Colors.white,
                                        //only check box
//only check box
                                        value: check3,
                                        //unchecked
                                        onChanged: (bool? value) {
                                          //value returned when checkbox is clicked
                                          setState(() {
                                            check3 = value;
                                          });
                                        }),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Details()));
        },
        backgroundColor: Colors.green[900],
        foregroundColor: Colors.black,
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
