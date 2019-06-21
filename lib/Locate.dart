import 'package:flutter/material.dart';
import 'package:karwash/splash.dart';
import 'package:karwash/Services.dart';

class Locate extends StatefulWidget {
  @override
  _LocateState createState() => _LocateState();
}

class _LocateState extends State<Locate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left:33.0),
          child: GestureDetector(
            child: Icon(Icons.arrow_back,color: Colors.white,),
            onTap: (){
              Navigator.of(context).pop();
            },
          ),
        ),
        centerTitle: true,
        title: new Text("Locate"),
        actions: <Widget>[
          new Container(
            padding: EdgeInsets.only(right: 33.0),
            child: GestureDetector(
              child: Icon(Icons.search,color: Colors.white,),
            ),
          )
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/map.jpg"),fit: BoxFit.cover)
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ButtonTheme(
                  minWidth: 200.0,
                  height: 50.0,
                  child: RaisedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Services()),
                    );
                  },elevation: 4.0, child: Text("Next",style: TextStyle(fontSize: 20),),textColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(60.0))),color: Colors.blue.withOpacity(0.8),),
                ),
                SizedBox(height: 20.0,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
