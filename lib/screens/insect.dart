import 'package:bayer/screens/user.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import 'chat.dart';
import 'feedbackapp.dart';




class DemoApp extends StatelessWidget {
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
      body: DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 16.0,
          //fontFamily: 'monospace',
        ),
        child: SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  'Bayer insecticides are a key part of integrated pest management programs. In addition to warding off pests, certain products promote cell growth and plant restoration, stimulate natural defenses against fungal infection, and safeguard crops from many environmental stressors.',
                  style: TextStyle(color: Colors.black),
                  trimLines: 2,
                  colorClickableText: Colors.green,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Show more',
                  trimExpandedText: ' show less',
                ),
              ),

              
Center(child: Column(children: [
  Column(children: [Container(
                      height: 180.0,
                      width: 180.0,
                      padding: EdgeInsets.only(
                        top: 50,
                        bottom: 10.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/insect1.png'),
                    ),
                    Column(children: [
                      Text('Movento® Insecticide for Hort Crops',style: TextStyle(color: Colors.green[800],fontSize: 13.0),),
                      Text('Powerful, two-way movement to protect plants from a '),
                      Text('broad range of insects, mites and nematodes.'),
                    ],)
                    ],),
  Column(children: [Container(
                      height: 180.0,
                      width: 180.0,
                      padding: EdgeInsets.only(
                        top: 50,
                        bottom: 10.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/insect2.png'),
                    ),
                    Column(children: [
                      Text('Velum® Total Insecticide for Cotton and Peanuts',style: TextStyle(color: Colors.green[800],fontSize: 13.0),),
                      Text('Sets a new standard in control of nematodes '),
                      Text('and early season insects.'),
                    ],)
                    ],),

                    Column(children: [Container(
                      height: 180.0,
                      width: 180.0,
                      padding: EdgeInsets.only(
                        top: 50,
                        bottom: 10.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/insect3.png'),
                    ),
                    Column(children: [
                      Text('Sivanto® Insecticide for Hort Crops',style: TextStyle(color: Colors.green[800],fontSize: 13.0),),
                      Text('Precisely targets key damaging pests while helping'),
                      Text('safeguard beneficial insects.'),
                    ],)
                    ],),
Column(children: [Container(
                      height: 180.0,
                      width: 180.0,
                      padding: EdgeInsets.only(
                        top: 50,
                        bottom: 10.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Image.asset('assets/images/insect4.png'),
                    ),
                    Column(children: [
                      Text('Baythroid® XL Insecticide for Corn, Soy, Cotton, Cereals and Citrus',style: TextStyle(color: Colors.green[800],fontSize: 13.0),),
                      Text('Fast knockdown and long residual control on a'),
                      Text('broad spectrum of insect pests.'),
                    ],)
                    ],)
                    
],)
                    

)



              

              
              
              
              
            ],
          ),
        ),
      ),

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