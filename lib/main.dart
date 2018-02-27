import 'package:flutter/material.dart';

void main(){
    runApp( new MaterialApp(
            home: new Mywidget(),
      )
    );
}

class Mywidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Widgets", textDirection: TextDirection.ltr,),),
      body: new Container(
        padding: new EdgeInsets.all(5.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           new  MyCard(
             title: new Text("I love Dhamar!", textDirection: TextDirection.ltr,),
             icon: new Icon(Icons.favorite),
           ),
           new MyCard(
             title: new Text("I love Pizza!", textDirection: TextDirection.ltr,),
             icon: new Icon(Icons.local_pizza),
           ),
           new MyCard(
             title: new Text("I see you", textDirection: TextDirection.ltr,),
             icon: new Icon(Icons.visibility),
           )
          ]
        ),
      ),

    );
  }
}

class MyCard extends StatelessWidget{
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context){
    return new Container(
      padding: new EdgeInsets.only(bottom: 5.0),
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[
              this.title,
              this.icon
            ],
        ),
        )
        
      ),
    );
  }


}