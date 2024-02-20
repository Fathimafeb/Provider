import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state/call.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counterprovider>(context);
    return Scaffold(
      floatingActionButton:Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed:() => counter.increment() ,
            child:  Icon(Icons.add,size: 25,),


          ),
          SizedBox(height: 20,),
          FloatingActionButton(
            onPressed: () => counter.decrement(),
            child: Icon(Icons.add,size: 25,),)
        ],
      ),


      appBar: AppBar(centerTitle: true,title: Text('Counter App'),backgroundColor: Colors.blue,),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('${counter.count}',style: TextStyle(fontSize: 30),)),

        ],
      ),


    );
  }
}
