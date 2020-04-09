import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_authentication/feature/Detail/detail_view.dart';
import 'package:flutter_bloc_authentication/feature/login/authentication/authentication.dart';
import 'package:flutter_bloc_authentication/models/car.dart';
import 'custom_view.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Car car = new Car("1","12h00","Hà Nội","Đà Nẵng","29B-112-124");
    final authBloc = BlocProvider.of<AuthenticationBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 60, 141, 1),
        title: Text('Danh Sách Tuyến'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Snackbar',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    // return object of type Dialog
                    return AlertDialog(
                      title: new Text("Chứng năng demo"),
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
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xFFD8D8D8),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.white,
                child: CalendarStrip(),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/1.7,
                      child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index){
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                              ButtonTheme(
                              minWidth: 170,
                              height: 80,
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: (){

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Detail(car: Car("1","12h00","Hà Nội","Đà Nẵng","29B-112-124"))),
                                  );
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        flex: 5,
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text("${car.time}",style: TextStyle(color: Colors.black,fontSize: 20),),
                                                SizedBox(width: 170,),
                                                Text("${car.idS}",style: TextStyle(color: Colors.black,fontSize: 20),),
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text("${car.start}",style: TextStyle(color: Color.fromRGBO(0, 60, 141, 1),fontSize: 20)),
                                                Icon(Icons.navigate_next),
                                                Text("${car.end}",style: TextStyle(color: Color.fromRGBO(0, 60, 141, 1),fontSize: 20)),
                                                SizedBox(width: 70,),
                                                Text("Sắp đến giờ",style: TextStyle(color: Colors.red,fontSize: 20)),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                                SizedBox(height: 10.0,)
                              ],
                            );
                          }
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding:
                            EdgeInsets.only(top: 0, left: 0, right: 15),
                            child: ButtonTheme(
                              minWidth: 170,
                              height: 60,
                              child: RaisedButton(
                                color: Color.fromRGBO(0, 60, 141, 1),
                                child: Text(
                                  'Trung chuyển',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                onPressed: (){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      // return object of type Dialog
                                      return AlertDialog(
                                        title: new Text("Chung Chuyển"),
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
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsets.only(top: 0, left: 15, right: 0),
                            child: ButtonTheme(
                              minWidth: 170,
                              height: 60,
                              child: RaisedButton(
                                color: Color.fromRGBO(0, 60, 141, 1),
                                child: Text(
                                  'Gọi tổng đài',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                onPressed: (){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      // return object of type Dialog
                                      return AlertDialog(
                                        title: new Text("Gọi Tổng Đài"),
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
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Thành Jokohama",style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 60, 141, 1),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.perm_identity),
                  tooltip: 'Snackbar',
                  onPressed: () {},
                ),
                OutlineButton(
                  color: Colors.white,
                  borderSide: BorderSide(color: Colors.white),
                  child: Text("Thông tin cá nhân",style: TextStyle(color: Color.fromRGBO(0, 60, 141, 1)),),
                  onPressed: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          // return object of type Dialog
                          return AlertDialog(
                            title: new Text("Thông tin cá nhân"),
                            content: new Text("username: anvuidemo"),
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
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.email),
                  tooltip: 'Snackbar',
                  onPressed: () {},
                ),
                OutlineButton(
                  color: Colors.white,
                  borderSide: BorderSide(color: Colors.white),
                  child: Text("Hướng dẫn",style: TextStyle(color: Color.fromRGBO(0, 60, 141, 1)),),
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        // return object of type Dialog
                        return AlertDialog(
                          title: new Text("Hướng Dẫn"),
                          content: new Text("tìm kiểm,......."),
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
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.call_missed_outgoing),
                  tooltip: 'Snackbar',
                  onPressed: () {},
                ),
                OutlineButton(
                  color: Colors.white,
                  borderSide: BorderSide(color: Colors.white),
                  child: Text("Đăng xuất",style: TextStyle(color: Color.fromRGBO(0, 60, 141, 1)),),
                  onPressed: (){
                    authBloc.add(UserLoggedOut());
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
