import 'package:flutter/material.dart';
import 'package:BMI_Tracker/pages/bmiShow.dart';
import 'package:BMI_Tracker/main.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String gender='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //App Bar Define
      appBar: AppBar(
        automaticallyImplyLeading: false,

        backgroundColor: Colors.blue[400],
        title: Text('Calculate Your BMI',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(16.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text("Welcome!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30.0,
                      ),),

                    SizedBox(height: 20.0),

                    Text("Calculate Your BMI",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20.0,
                      ),),
                    SizedBox(height: 30.0),

                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter Your Name',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue,width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),

                    SizedBox(height: 30.0),

                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter Your Weight(in Kgs)',
                        prefixIcon: Icon(Icons.monitor_weight),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue,width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),

                    SizedBox(height: 30.0),

                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter Your Height(in cm)',
                        prefixIcon: Icon(Icons.height),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue,width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),

                    SizedBox(height: 30.0),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio(

                            value: 'Male', groupValue: gender, onChanged: (value){
                              setState(() {
                                gender=value.toString();
                              });
                        }),
                        Text('Male',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),),

                        Radio(

                            value: 'Female', groupValue: gender, onChanged: (value){
                              setState(() {
                                gender=value.toString();
                              });
                        }),

                        Text('Female',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.0),
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      child: ElevatedButton.icon(onPressed: (){
                        Navigator.pushNamed(context, '/bmiShow');
                      },

                        label: Text('SUBMIT',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                        icon: Icon(Icons.done,
                            color: Colors.black),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[400]!),
                        ),

                      ),
                    )


                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }
}

