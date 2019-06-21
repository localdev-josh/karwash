import 'package:flutter/material.dart';
import 'package:karwash/Payment.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class ServiceContent {
  String subject;
  String time;
  String sender;
  String message;

  ServiceContent(this.subject, this.sender, this.time, this.message);
  String getSubject() => this.subject;
  String getSender() => this.sender;
  String getTime() => this.time;
  String getMessage() => this.message;
}

class ServiceGenerator {
  static var serviceList = [
    ServiceContent("Lorem losum", "Karwash Limited", "1 Jan",
        "This is a ..."),
    ServiceContent("John Doe", "Cars20", "31 Oct",
        "A demo mail..."),
    ServiceContent("John Doe", "Carwash Doctor", "31 Oct",
        "A demo mail..."),
    ServiceContent("John Doe", "CarClean", "31 Oct",
        "A demo mail...")
  ];
  static ServiceContent getServiceContent(int position) => serviceList[position];
  static int serviceListLength = serviceList.length;
}
class _ServicesState extends State<Services> {
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
        title: new Text("Services"),
        actions: <Widget>[
          new Container(
            padding: EdgeInsets.only(right: 33.0),
            child: GestureDetector(
              child: Icon(Icons.search,color: Colors.white,),
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: ServiceGenerator.serviceListLength,
          itemBuilder: (context,position){
            ServiceContent mailContent = ServiceGenerator.getServiceContent(position);
            return InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentPage()),
                );
              },
              child: Card(
                margin: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: 14.0, right: 14.0, top: 5.0, bottom: 5.0
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(image: AssetImage("assets/3.jpg"),fit: BoxFit.cover)
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      new Text(
                                          mailContent.sender,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black87,
                                              fontSize: 17.0
                                          )
                                      ),
//                                  Text(
//                                    mailContent.time,
//                                    style: TextStyle(
//                                        fontWeight: FontWeight.w400,
//                                        color: Colors.black54,
//                                        fontSize: 13.5),
//                                  ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            mailContent.subject,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54,
                                                fontSize: 15.5),
                                          ),
                                          Text(
                                            mailContent.message,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54,
                                                fontSize: 15.5),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 30.0,),
                                      new Text("N300")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
