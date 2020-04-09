import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_authentication/models/car.dart';

class Detail extends StatefulWidget {
  final Car car;

  Detail({Key key, @required this.car}) : super(key: key);
  @override
  _Detail createState() => _Detail();

}

class _Detail extends State<Detail> {
  Car car = new Car("1","12h00","Hà Nội","Đà Nẵng","29B-112-124");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 60, 141, 1),
        title: Text('Chi tiết chuyến'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Snackbar',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.insert_chart),
            tooltip: 'Snackbar',
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  // return object of type Dialog
                  return AlertDialog(
                    title: new Text("Bản Đồ"),
                    content: new Text("Tính năng sẽ được cập nhật sớm nhất",
                      style: TextStyle(color: Colors.red),),
                    actions: <Widget>[
                      // usually buttons at the bottom of the dialog
                      new FlatButton(
                        child: new Text("Close"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              color: Color(0xFFD8D8D8),
              child: Text(
               "Giờ xe chạy: ${car.time}" + "\n" + "Biển số xe:${car.idS} " + "\n" + "Xuất phát tại:${car.start}" + "\n" + "Điểm đến tại:${car.end}",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}