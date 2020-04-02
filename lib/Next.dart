import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertestexam/main.dart';

class Next extends StatelessWidget{
  int value=0;


  Next(this.value);

  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Next'),),
        body: Center(
          child: Column(
            children: <Widget>[

              Text(
                '$value'
              ),

              TextField(
                keyboardType: TextInputType.number,
                controller: controller,
              ),

              RaisedButton(
                color: Colors.blue,
                child: Text(
                    'Next'
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(int.parse(controller.text)+10)));

                },
              )
            ],
          )
        ),
      ),
    );
  }

}
