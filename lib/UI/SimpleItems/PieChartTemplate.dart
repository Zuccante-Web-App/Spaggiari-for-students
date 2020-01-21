import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';


class TrendWidget extends StatelessWidget {

  Map<String, double> trend = new Map();

  List<dynamic> colorList= [
    Colors.lightGreenAccent[400],
    Colors.amber,
    Colors.deepOrangeAccent[400],
  ];

    void populatedMap(){
      trend.putIfAbsent("Suff", () => 5);
      trend.putIfAbsent("Insuff", () => 5);
      trend.putIfAbsent("AlmostSuff", () => 5);
    }

    @override
    Widget build(BuildContext context){
      return PieChart(
        dataMap: trend,
        showLegends: false,
		    //showChartValuesOutside: false,
        showChartValues: false,
        animationDuration: Duration(milliseconds: 600),
        chartRadius: MediaQuery.of(context).size.width / 2.7,
        showChartValuesInPercentage: true,
        showChartValuesOutside: false,
        colorList: colorList,
        decimalPlaces: 1,
        showChartValueLabel: false,
        initialAngle: 0,
	    	chartType: ChartType.ring,
      );
    }

}