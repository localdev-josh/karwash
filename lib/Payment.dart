import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
        title: new Text("Payment"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20.0),
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("We Accept",style: TextStyle(fontSize: 25.0,fontFamily: "WorkSansMedium"),)
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Image(image: AssetImage("assets/mastercard.jpeg")),
                ),
                Expanded(child: Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: Image(image: AssetImage("assets/paypal-topic.png"),fit: BoxFit.contain,),
                )
                ),
                Expanded(child: Image(image: AssetImage("assets/Visa.jpg"))
                )
              ],
            ),
            SizedBox(height: 20.0,),
            Card(
              elevation: 5.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 5.0,left: 12.0),
                    child: new Text("Card Number",style: TextStyle(fontSize: 20.0,fontFamily: "WorkSansMedium"),),
                  ),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    child: Form(child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Input Numbers"
                          ),
                        )
                      ],
                    )),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Container(
              padding: EdgeInsets.only(top: 5.0,left: 12.0),
        child: new Text("Expiration Date",style: TextStyle(fontSize: 20.0,fontFamily: "WorkSansMedium"),),
      ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: <Widget>[
                         new Expanded(child: Card(
                            child: TextFormField(
                              validator: (value){
                                if(value.isEmpty){
                                  return "Enter a Value";
                                }
                              },
                              decoration: InputDecoration(
                                  hintText: "M/D",
                                  suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                                  hintStyle: TextStyle(color: Colors.black),
                                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                  border: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none))
                              ),
                            ),
                          )
                          ),
                        new Expanded(child: Card(
                          child: TextFormField(
                            validator: (value){
                              if(value.isEmpty){
                                return "Enter a Value";
                              }
                            },
                            decoration: InputDecoration(
                                hintText: "M/Y",
                                suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                                hintStyle: TextStyle(color: Colors.black),
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                border: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none))
                            ),
                          ),
                        )
                        ),
                      ],
                    ),
                  ),
              Card(
                elevation: 5.0,
                margin: EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 5.0,left: 12.0),
                      child: new Text("Coupon Code",style: TextStyle(fontSize: 20.0,fontFamily: "WorkSansMedium"),),
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      child: Form(child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Input Code"
                            ),
                          )
                        ],
                      )),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 150.0),),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 200.0,
                      height: 50.0,
                      child: RaisedButton(onPressed: (){
//                        Navigator.push(
//                          context,
//                          MaterialPageRoute(builder: (context) => Locate()),
//                        );
                      },elevation: 4.0, child: Text("Pay",style: TextStyle(fontSize: 20),),textColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(60.0))),color: Colors.blue,),
                    ),
                    SizedBox(height: 20.0,)
                  ],
                ),
              ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
