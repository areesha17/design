import 'package:flutter/material.dart';
import 'package:myproject/Screens/Categories.dart';

import 'Payments.dart';
import 'Transaction.dart';
import 'feedback.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Available Cars"),
      ),
      drawer: Drawer( 
             child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Areesha Zafar", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)), 
              accountEmail: Text("areeshazafar5@gmail.com", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
              currentAccountPicture: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
                )
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("Feedback"),
              onTap: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => FB()));
              },
            ),
             ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("Transaction"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Transaction()));
              },
            ),
             ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("Payment"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Payments()));

              },
             ),
          ],
             ),
     ),
    body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.04,
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                height: MediaQuery.of(context).size.height * 0.18,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  // color: color1,
                  borderRadius: BorderRadius.all(
                    Radius.circular(9.0),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            "Seden",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Container(
                            child: ElevatedButton(
                                onPressed: () {}, child: Text("250"))),
                      ],
                    ),
                    Card(
                        child: Image.asset(
                      'assets/pic.jpg',
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.3,
                    ))
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                height: MediaQuery.of(context).size.height * 0.18,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  // color: color1,
                  borderRadius: BorderRadius.all(
                    Radius.circular(9.0),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            "Seden",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Container(
                            child: ElevatedButton(
                                onPressed: () {}, child: Text("250"))),
                      ],
                    ),
                    Card(
                        child: Image.asset(
                      'assets/pic1.jpg',
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.4,
                    ))
                  ],
                ),
              ),
          
            ],
          );
        },
      ),
    
    );
  }
}
