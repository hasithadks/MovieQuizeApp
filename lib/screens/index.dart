import 'package:flutter/material.dart';
import 'package:movie_quize_app/theme/colors.dart';

class IndexPage extends StatefulWidget{
  @override
  _IndexPageState createState() => _IndexPageState();
}
class _IndexPageState extends State<IndexPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listing User"),
      ),
      body: getBody(),
    );
  }
  Widget getBody(){
    List item = [
      "1"
      "2"
    ];
    return ListView.builder(
        itemBuilder: (context,index){
      return getCard();
    });
  }
  Widget getCard(){
    return Card(
      child:Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          title: Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(60/2),
                  image :  DecorationImage(
                      fit :BoxFit.cover,
                      image:
                  NetworkImage("https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHByb2ZpbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" )
                  )
                ),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Sopheamen Van", style: TextStyle(fontSize:17),),
                  SizedBox(width: 20),
                  Text("Sopheamen Van", style: TextStyle(color: Colors.grey),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
