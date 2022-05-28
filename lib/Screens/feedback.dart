import 'package:flutter/material.dart';
import 'package:myproject/Screens/home.dart';

class FB extends StatefulWidget {
  const FB({ Key? key }) : super(key: key);

  @override
  State<FB> createState() => _FBState();
}

class _FBState extends State<FB> {
final bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: TextButton(
          onPressed:(){
             Navigator.of(context).pop(MaterialPageRoute(builder: (context) => Home()));
          },
          child: Text("Close",style: TextStyle(fontSize:15, fontWeight: FontWeight.bold, color: Colors.grey), ), 
        ),
      title: Text("FeedBack"),
        actions: [TextButton(
          onPressed: (){
             Navigator.of(context).pop(MaterialPageRoute(builder: (context) => Home()));
          }, 
          child: Text("Post",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey), ))],
      ),
      body: Column(
        children: <Widget>[
         Container(child:  TextField(
            decoration: InputDecoration(
              hintText: "Write Something.....",
              icon: Icon(Icons.person)
            ),
          ),
         ),
         SizedBox(height: 14,),
          Container(
            padding: EdgeInsets.only(right: 270),
            child: Text("Add Location", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),),
          Container(
            height: 100,
            width: 500,
            color: Color.fromARGB(255, 231, 227, 227),
          ),
          ListTile(
            title: Text("Twitter", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.toggle_off_rounded, size: 60,
          ),
          ),
          ListTile(
            title: Text("Facebook", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.toggle_on_rounded, size: 60,
          ),),
          ListTile(
            title: Text("Instagram", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.toggle_on_rounded, size: 60,
          ),),
          Container(
            height: 230,
            width: 500,
            color: Color.fromARGB(255, 231, 227, 227),
          )
        ],
      )
    );
  }
}