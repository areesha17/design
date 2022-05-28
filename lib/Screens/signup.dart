import 'package:flutter/material.dart';
import 'package:myproject/Screens/Verify.dart';
import 'package:myproject/Screens/home.dart';
import 'package:myproject/Screens/login.dart';
import 'package:myproject/Screens/welcome.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        leading: IconButton( 
             onPressed: (){
                 Navigator.of(context).pop(MaterialPageRoute(builder: (context) => Welcome()));
             },
             icon: Icon(Icons.arrow_back),),
        backgroundColor: Colors.red,
        title: Text("Sign In",style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search)),
            IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu)),
        ],
        
      ),
      
      body:SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
         children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 30,
                   child: Icon(Icons.person),
                )
              ],
            ),
          
            const TextField(
              decoration: InputDecoration(
                labelText: "First Name",
                labelStyle: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
                ),
                filled: true,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Last Name",
                labelStyle: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
                ),
                filled: true,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Contact Number",
                labelStyle: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
                ),
                filled: true,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Address",
                labelStyle: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
                ),
                filled: true,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Email Address",
                labelStyle: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
                ),
                filled: true,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Username",
                labelStyle: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
                ),
                filled: true,
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(
                  fontSize: 20,
                ),
                filled: true,
              ),
            ),
            const SizedBox(
              height: 20,
              width: 25,
            ),
            Column(
              children: <Widget>[
                ButtonTheme(
                  height: 40,
                  buttonColor: Colors.blue.shade800,
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => Verify()));
                    },
                    child: Text('Sign Up',
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                  ),
                ),
                // const SizedBox(
                //   height: 1,
                // ),
                 TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                  }, 
                  child: Text('Already have an account? SignIn',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ))),
              ],
            ),
            
              ],
            ),
          
        ),
   
    );
  }
}