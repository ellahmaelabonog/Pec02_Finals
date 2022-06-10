import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'function.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myfront(),
  ));
}
class Myfront extends StatelessWidget {
  const Myfront({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.white60, Colors.black12])),
        child: Center(
          child: Column(
              children:[
                SizedBox(height:20),
                Text('          Welcome!\n                 \n\nHigh-Low Card Game',
                  style: TextStyle(
                    fontSize:50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                SizedBox(height: 200),
                RaisedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainFunction())
                  );
                },
                  child: Text('Start Game',
                      style: TextStyle(
                        fontSize:30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      )
                  ),
                )
              ]
          ),
        ),
      ),
    );
  }
}