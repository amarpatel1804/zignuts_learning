import 'package:flutter/material.dart';
import 'package:BMI_Tracker/pages/home.dart';
import 'package:BMI_Tracker/main.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';



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
          //automaticallyImplyLeading: false,
          title: Text('Calculated BMI',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      

          body: Column(
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

              Container(
                padding: EdgeInsets.all(16.0),
                width: double.infinity,
                height: 350,
                child: SfCartesianChart(
                  series: <CartesianSeries>[
                    ColumnSeries<weightdata, int>(
                      dataSource: getColumnData(),
                      xValueMapper: (weightdata data, _) => data.day,
                      yValueMapper: (weightdata data, _) => data.weight,
                    ),
                  ],
                ),
              ),




              SizedBox(height: 20.0),
              ElevatedButton.icon(
                  onPressed: (){
                      Navigator.pushNamed(context, '/addDetails');
                  },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[400]!),
                ),
                  label: Text('ADD',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
              )
            ],
          ),
      ),
    );
  }
}

class weightdata{
  late int day;
  late int weight;
  weightdata(this.day,this.weight);

}

dynamic getColumnData(){

  List<weightdata> columData=<weightdata>[

    weightdata(1, 73),
    weightdata(5, 78),
    weightdata(2, 75),
    weightdata(8, 79),
    weightdata(1, 80),


  ];

  return columData;
}
