import 'package:flutter/material.dart';

import 'chat.dart';
import 'feedbackapp.dart';


class user extends StatelessWidget {
  const user({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text(
              '                     Bayer',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(icon: Icon(Icons.chat), onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Chat()));
              }),
            ]),
            body: Column(children: [
              Center(
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                      height: 80.0,
                      width: 80.0,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/pic.png'),
                    ),
                    Container(padding: EdgeInsets.only(top: 20.0),  child: Text('USER NAME',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),),
                    Container(padding: EdgeInsets.only(top: 80.0,bottom: 18.0),child: Text('HISTORY',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),),
                ],),
              ),
              Row(children: [

        Container(
                      height: 80.0,
                      width: 80.0,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/pic.jpeg'),
                    ),
                    Container(
                      height: 80.0,
                      width: 80.0,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/pic.jpeg'),
                    ),
                    Container(
                      height: 80.0,
                      width: 80.0,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/pic.jpeg'),
                    ),
                    Container(
                      height: 80.0,
                      width: 80.0,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/pic.jpeg'),
                    ),
                    Container(
                      height: 80.0,
                      width: 80.0,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/pic.jpeg'),
                    ),

              ],),
              Center(child: Container(padding: EdgeInsets.only(top: 80.0,bottom: 18.0),child: Text("SUGGESTED",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),),),

              Row(children: [

        Container(
                      height: 80.0,
                      width: 80.0,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/pic.jpeg'),
                    ),
                    Container(
                      height: 80.0,
                      width: 80.0,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/pic.jpeg'),
                    ),
                    Container(
                      height: 80.0,
                      width: 80.0,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/pic.jpeg'),
                    ),
                    Container(
                      height: 80.0,
                      width: 80.0,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/pic.jpeg'),
                    ),
                    Container(
                      height: 80.0,
                      width: 80.0,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/pic.jpeg'),
                    ),

              ],),

            ],),

            bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.green,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(Icons.feedback),
                  onPressed: () {
                    Navigator.push(context,
                  MaterialPageRoute(builder: (context) => feedbackapp()));
                  },
                ),
                
                IconButton(
                  tooltip: 'Favorite',
                  icon: const Icon(Icons.history),
                  onPressed: () {
                    Navigator.push(context,
                  MaterialPageRoute(builder: (context) => user()));
                  },
                ),
              ],
            ),
          ),
        )
      
    );
  }
}