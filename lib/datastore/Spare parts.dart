import 'package:flutter/material.dart';

import '../homepage.dart';

class e_lab extends StatelessWidget {
  const e_lab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SpareParts(), floatingActionButton: FloatingActionButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (_)=> homepage()));
      },
      backgroundColor: Colors.green[900],
      foregroundColor: Colors.black,
      child: Icon(Icons.navigate_next ),

    ),);
  }
}


class SpareParts extends StatefulWidget {

  @override
  _SparePartsState createState() => _SparePartsState();
}

ValueNotifier<int> lengthNOtifier = ValueNotifier(1);

class _SparePartsState extends State<SpareParts> {
  final formKey = GlobalKey<FormState>();
  bool? check1 = false, check2 = true, check3 = false;
  @override
  TextEditingController textEditingControllercontroller =
  TextEditingController();
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.white10,
                  Colors.white10,
                ])),
        child: SingleChildScrollView(
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
                padding: EdgeInsets.only(left: 120),
                child: Text(
                  "SpareParts",
                  style: TextStyle(fontSize: 20, color: Color(0xff1b5e20)),
                ),
              ),
              ValueListenableBuilder(
                  valueListenable: lengthNOtifier,
                  builder: (context, value, child) {
                    return ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextField(
                              decoration: InputDecoration(labelText:" ${index+1}"),
                            ),
                          );
                        },
                        itemCount: lengthNOtifier.value,
                      );
                  }),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Belongs:",
                  style: TextStyle(fontSize: 20, color: Color(0xff1b5e20)),
                ),
              ), SizedBox(
                height: 20,
              ),
            Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 10,),
                      Text('charger ',style: TextStyle(fontSize: 17.0), ),
                      Checkbox( //only check box
                          value: check1, //unchecked
                          onChanged: (bool? value){
                            //value returned when checkbox is clicked
                            setState(() {
                              check1 = value;
                            });
                          }
                      ),

                    ],
                  ),
                ],
              ),
      IconButton(onPressed: (){
                lengthNOtifier.value = lengthNOtifier.value + 1;
              }, icon: Icon(Icons.add_circle_outline))
            ],
          ),
        ),
      );
  }
}
