import 'package:flutter/material.dart';
import 'package:sample/pages/home.dart';
import 'package:sample/main.dart';

class BmiShow extends StatefulWidget {
  const BmiShow({super.key});

  @override
  State<BmiShow> createState() => _BmiShowState();
}

class _BmiShowState extends State<BmiShow> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[400],
          title: Text('Calculated BMI',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding:  EdgeInsets.all(16.0),
                width: double.infinity,
                height: 200,
                child: Card(
                  color: Colors.blue[50],
                  elevation: 5.0,
                    margin: EdgeInsets.all(10.0),
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text('BMI Details',
                      
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: Colors.blue[800],
                      
                            ),),
                      
                          const Divider(),
                          SizedBox(height: 20.0),
                      
                          Text('24.25555555',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.0,
                              color: Colors.black,
                      
                            ),),
                        ],
                      ),
                    ),
                ),
              ),
              SizedBox(height: 20.0),
              
              Text('data')
              
            ],
          ),
        ),
      
      
      
      ),
    );
  }
}
