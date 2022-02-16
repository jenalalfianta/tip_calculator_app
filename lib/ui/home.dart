import 'package:flutter/material.dart';


class Tip_Calculator_App extends StatefulWidget {
  const Tip_Calculator_App({ Key? key }) : super(key: key);

  @override
  _Tip_Calculator_AppState createState() => _Tip_Calculator_AppState();
}

class _Tip_Calculator_AppState extends State<Tip_Calculator_App> {

  int _tipPercentage = 0;
  int _personCounter = 1;
  double _billAmount = 0.0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: Colors.white,
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: ListView(
            scrollDirection : Axis.vertical,
            padding: EdgeInsets.all(20),
            children: [
              Container(
                alignment: Alignment.center,
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Total Per Person'),
                      Text('\$123')
                    ],
                  ),
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.blueGrey.shade100,
                    style: BorderStyle.solid
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                        hintText: "Bill Amount",
                        prefixIcon: Icon(Icons.attach_money)
                      ),
                      onChanged: (String value){
                        try {
                          _billAmount = double.parse(value);
                        } catch (e) {
                          _billAmount = 0.0;
                        }
                      },
                    )
                  ],
                ),
              )
            ],
          )
        )
    );
  }
}