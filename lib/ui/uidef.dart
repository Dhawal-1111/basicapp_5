import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BizCardApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getAvatar(),
          ],
        ),
      ),
    );

  }
  Container _getCard(){
    return Container(
        width: 350,
      height: 200,
      margin: EdgeInsets.all(60),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 219, 127, 226),
        borderRadius: BorderRadius.circular(30.0),


      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("XYZ"),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.perm_identity),
                Text("-Cy_authority"),
              ],
            )
          ],
        )
    );
  }
  Container _getAvatar(){
    return Container(
       width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.redAccent,width: 1.2),
        image: DecorationImage(image: NetworkImage("https://picsum.photos/300/300"),
        fit: BoxFit.cover)
      )
      ,
    );
  }
}
