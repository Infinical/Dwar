import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          'Dwar',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 24.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Hello, Calvin!',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 56.0,
                          fontFamily: 'NanumGothic'),
                    ),
                  )
                ],
              ),
            ),
            // SizedBox(
            //   width: 600.0,
            //   height: 300.0,

            //   child: const Card(
            //     margin: EdgeInsets.fromLTRB(80.0, 40.0, 0.0, 0.0),
            //     elevation: 0,
            //     color: Colors.black,
            //     child: ListTile(
            //       title: Text(
            //         'Calvin Mokua',
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 56.0,
            //             fontFamily: 'NanumGothic'),
            //       ),
            //     ),
            //   ),
            // )
            // CarouselSlider(
            //   height: 300.0,
            //   items: [1, 2, 3, 4, 5].map((i) {
            //     return Builder(
            //       builder: (BuildContext context) {
            //         return Container(
            //             // width: MediaQuery.of(context).size.width,
            //             width: 600.0,
            //             margin: EdgeInsets.fromLTRB(80.0, 40.0, 0.0, 0.0),
            //             decoration: BoxDecoration(color: Colors.black),
            //             child: ListTile(
            //                 title: Text('Calvin Mokua',
            //                     style: TextStyle(
            //                         color: Colors.white,
            //                         fontSize: 56.0,
            //                         fontFamily: 'NanumGothic'))));
            //       },
            //     );
            //   }).toList(),
            // ),
            Container(
              width: 80.0,
              constraints: BoxConstraints.expand(
                height:
                    Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
              ),
              margin: EdgeInsets.fromLTRB(90.0, 40.0, 0.0, 0.0),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [new BoxShadow(
                    color: Colors.black,
                    blurRadius: 80.0
                  )]
                  ),
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new ListTile(
                      title: Text('Calvin Mokua',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 56.0,
                              fontFamily: 'NanumGothic')));
                },
                itemCount: 10,
                viewportFraction: 1,
                scale: 1,
              ),
            ),

            SizedBox(
              width: 600.0,
              height: 300.0,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [new BoxShadow(
                    color: Colors.yellow[50],
                    blurRadius: 80.0
                  )]
                ),
                margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                child: LineChart(
                  LineChartData(
                    // read about it in the below section
                    lineTouchData: const LineTouchData(
                      enabled: false,
                    ),
                    gridData: const FlGridData(
                      show: false,
                    ),
                    titlesData: FlTitlesData(
                      bottomTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 22,
                        textStyle: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        margin: 10,
                        getTitles: (value) {
                          switch (value.toInt()) {
                            case 2:
                              return '1W';
                            case 5:
                              return '2W';
                            case 7:
                              return '3W';
                            case 12:
                              return '4W';
                          }
                          return '';
                        },
                      ),
                      leftTitles: SideTitles(
                        showTitles: false,
                        textStyle: TextStyle(
                          color: const Color(0xff75729e),
                          fontWeight: FontWeight.bold,
                          fontSize: 9,
                        ),
                        getTitles: (value) {
                          switch (value.toInt()) {
                            case 1:
                              return '1m';
                            case 2:
                              return '2m';
                            case 3:
                              return '3m';
                            case 4:
                              return '5m';
                            case 5:
                              return '6m';
                          }
                          return '';
                        },
                        margin: 8,
                        reservedSize: 30,
                      ),
                    ),
                    borderData: FlBorderData(
                        show: true,
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.transparent,
                          ),
                          left: BorderSide(
                            color: Colors.transparent,
                          ),
                          right: BorderSide(
                            color: Colors.transparent,
                          ),
                          top: BorderSide(
                            color: Colors.transparent,
                          ),
                        )),
                    minX: 0,
                    maxX: 14,
                    maxY: 6,
                    minY: 0,
                    lineBarsData: linesBarData2(),
                  ),
                ),
              ),
            ),

            Container(
              height: 60.0,
              margin: EdgeInsets.fromLTRB(40.0, 70.0, 0.0, 0.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10.0),
                    height: 50.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                      ),
                      color: Colors.black,
                      onPressed: () {},
                      child: const Text('Enabled Button',
                          style: TextStyle(fontSize: 10, color: Colors.white,fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                      ),
                      color: Colors.white,
                      onPressed: () {},
                      child: const Text('Enabled Button',
                          style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                      ),
                      color: Colors.black,
                      onPressed: () {},
                      child: const Text('Enabled Button',
                          style: TextStyle(fontSize: 10, color: Colors.white,fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                      ),
                      color: Colors.white,
                      onPressed: () {},
                      child: const Text('Enabled Button',
                          style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                      ),
                      color: Colors.black,
                      onPressed: () {},
                      child: const Text('Enabled Button',
                          style: TextStyle(fontSize: 10, color: Colors.white,fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<LineChartBarData> linesBarData2() {
    return [
      const LineChartBarData(
        spots: [
          FlSpot(13, 3.9),
          FlSpot(12, 2.6),
          FlSpot(10, 2.8),
          FlSpot(7, 1.2),
          FlSpot(3, 2.8),
          FlSpot(1, 1),
        ],
        isCurved: true,
        colors: [
          Color(0x998ce6ba),
        ],
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(show: true, colors: [
          Color(0x99fffee6),
        ]),
      ),
    ];
  }
}
