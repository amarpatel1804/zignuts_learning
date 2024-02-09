import 'package:flutter/material.dart';
import 'package:BMI_Tracker/pages/bmiShow.dart';
import 'package:BMI_Tracker/main.dart';

class AddDetails extends StatefulWidget {
  const AddDetails({super.key});

  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text('Add Details',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Center(
        child: Container(
          margin: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text("Fill Below Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0,
                ),),

              SizedBox(height: 40.0),
              Form(
                  child:Container(
                    margin: EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Weight(Kgs)',
                            hintText: 'Enter Weight in Kgs',
                            prefixIcon: Icon(Icons.monitor_weight),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue,width: 2.0),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            )
                          ),
                          validator: (value){
                            if(value==null){
                              return 'Please enter your weight';
                            }
                          },
                        ),

                        SizedBox(height: 20.0),

                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Height(cm)',
                              hintText: 'Enter Height in cm',
                              prefixIcon: Icon(Icons.height),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue,width: 2.0),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              )
                          ),
                          validator: (value){
                            if(value==null){
                              return 'Please enter your weight';
                            }
                          },
                        ),
                        SizedBox(height: 20.0),

                ElevatedButton(
                  onPressed: () async {
                        DateTime? datePicked=await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2022),
                            lastDate: DateTime.now());
                  },
                  child: Text('Select Date'),

                )],

                    ),
                  ) )





            ],
          ),
        ),
      ),


    ));
  }
}
