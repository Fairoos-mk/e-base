import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
        Column(
          children: [
            Text("E_Lab"),
            SizedBox(height: 10,),

          ],
        ),),
    );
  }
}

