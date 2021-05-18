import 'package:flutter/material.dart';

class HeatModule extends StatefulWidget {
  @override
  State<HeatModule> createState() => _HeatModuleState();
}

class _HeatModuleState extends State<HeatModule> {
  double _temp = 70;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                'Heat Module',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.battery_full),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text('Current Temperature : 70ºC'),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.fireplace),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Slider(
            value: _temp,
            min: 0,
            max: 100,
            divisions: 101,
            onChanged: (double value) {
              setState(() {
                _temp = value;
              });
            },
          ),
        ],
      ),
    );
  }
}