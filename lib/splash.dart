import 'package:flutter/material.dart';
import 'package:karwash/Locate.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String appName = "Karwash";
    return Scaffold(
//      appBar: AppBar(
//        title: new Text(appName),
//      ),
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/splash.jpg"),fit: BoxFit.cover)
            ),
          ),
          new Container(
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.8)
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Karwash",style: TextStyle(color: Colors.white,fontSize: 95,fontFamily: "Kwff",))
              ],
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
                    MaterialPageRoute(builder: (context) => Locate()),
                  );
                  },elevation: 4.0, child: Text("Next",style: TextStyle(fontSize: 20),),textColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(60.0))),color: Colors.white,),
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
