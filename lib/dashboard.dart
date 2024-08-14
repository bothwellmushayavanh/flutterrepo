// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

createTask ()
{
  showDialog(context: context, builder: (context){
    return  AlertDialog(
      backgroundColor: Colors.white,

      content: Container(
        
        height: 200,
        
        
child: Column(
  children: [
    TextFormField(
      
      
      decoration: InputDecoration(
        labelText: 'Enter phone number',
        
        
      ),
    ),
    Container(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Enter Amount'
            ),
          ),
          Container(
            child: Row(
              children: [
                MaterialButton(
                  onPressed: ()
                  {

                  },
                  child: Text('Buy'),
                  ),
SizedBox(width: 40,),

MaterialButton(
  onPressed: ()
  {

  },
child: Text('Deny'),
 
  )

              ],
            ),
          )
        ],
      ),

      
    )

    
  ],
  
),

      ),



    );
  });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Dashbord', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      backgroundColor: Colors.blue,
      body: Column(
        children: <Widget> [
         Padding(
           padding:  EdgeInsets.symmetric(horizontal: 40, vertical: 30),
           child: Row(
            
            children: [
              Container(
                
                height: 100,
                width: 100,
                color: Colors.white,
              
                
              ),
              SizedBox(width: 40,),
              Center(
                child: GestureDetector(
                  onTap: createTask,
                  child: Container(
                    color: Colors.green,
                    height: 100,
                    width: 100,
                    child: Text('Airtime', style: TextStyle(color: Colors.white),),
                  ),

                ),
              )
            ],
           ),
         )

        ],
      ),
    );
  }
}