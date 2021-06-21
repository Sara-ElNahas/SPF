import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  // const MyHome({Key key}) : super(key: key);  malo4 lazma

  final String title;

  // hena lazem lma a3mel call l MyHome adeha string (title)
  MyHome(this.title);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
        //centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have Pushed the button this many times:"),
            //Text("${count}",style: TextStyle(fontSize: 32 , fontFamily: "nome of family" ),),
            Text(
              "${count}",
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      /*body: Center(
            //color: Colors.blue,
            //child: Text("Hello In Our Farm")
          child: Text("You have Pushed the button this many times: ${count}"), // Text(count.toString()),

        ),
         */
      floatingActionButton: FloatingActionButton(
        onPressed: onPressedFunction,
        child: Icon(Icons.add),
        tooltip: "Increment",
      ),
    );
  }

  void onPressedFunction() {
    setState(() {
      count += 1;
    });
  }
}