import 'package:flutter/material.dart';
import 'package:myproject/Screens/Verify.dart';
import 'package:myproject/Screens/login.dart';

class Forgot extends StatefulWidget {
  const Forgot({ Key? key }) : super(key: key);

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop(MaterialPageRoute(builder: (context) => Login()));
          }, icon: Icon(Icons.arrow_back)),
          title: Text("Forgot Password"),
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
                Text("Reset your Password",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
            const SizedBox(height: 60.0),
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                  fontSize: 20,
                ),
                filled: true,
              ),
            ),
             SizedBox(height: 7,),
             
            ElevatedButton(
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => Verify()));
                    },
                    child: Text('Reset Password',
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                  ),
         ]
      ),
      ),
    );
  }
}