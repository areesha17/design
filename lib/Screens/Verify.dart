import 'package:flutter/material.dart';
import 'package:myproject/Screens/forgotpassword.dart';
import 'package:myproject/Screens/home.dart';

class Verify extends StatefulWidget {
  const Verify({ Key? key }) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop(MaterialPageRoute(builder: (context) => Forgot()));
          }, icon: Icon(Icons.arrow_back)),
          title: Text("Verify your Account"),
      ),
      body: SafeArea(
        child: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
         children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Text("Please Enter your Phone Number",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
            const SizedBox(height: 60.0),
            const TextField(
              decoration: InputDecoration(
                labelText: "Phone Number",
                labelStyle: TextStyle(
                  fontSize: 20,
                ),
                filled: true,
              ),
            ),
            SizedBox(height: 7,),
            ElevatedButton(
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text('Complete Registration',
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                  ),
         ]
      ),
      ),
    );
  }
}