import 'package:flutter/material.dart';

import 'chat.dart';

class feedback extends StatefulWidget {
 

  @override
  _feedbackState createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
 
 
            TextEditingController idController = new TextEditingController();
  TextEditingController feedbackController = new TextEditingController();
               
  final _formKey = GlobalKey<FormState>();
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
                child: Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child:Text('PRODUCT FEEDBACK',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),) ,)
              ),
              
              Form(
                             key: _formKey,
                            child:
                            
                           SingleChildScrollView(child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 50.0,left: 15.0,right: 15.0),
                                
                               child: TextFormField(
                                  
                                  controller: idController,
                            
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Product Id",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                                validator: (val){
                      return val.isEmpty || val.length < 3 ? "Enter Username 3+ characters" : null;
                    },
                          ),),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(padding: EdgeInsets.only(top: 10.0,left: 5.0,right: 5.0),
                          child: Container(
                            
                            
                            child:    TextFormField(
                                  controller: feedbackController,
                            
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Feedback",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                                validator: (val){
                      return val.isEmpty || val.length < 3 ? "Enter Username 3+ characters" : null;
                    },
                          ), ),
                          ),

                      
                         
                          
                          
                          ],
                          )), 
                          ),],) 
                          
            
            );
  }
}