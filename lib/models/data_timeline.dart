import 'package:flutter/material.dart';

class Doodle {
  final String name;
  final String up;
  final String down;
  final String des;
  const Doodle(
      {this.name,
        this.up,
        this.down,
        this.des,});
}

const List<Doodle> doodles = [
  Doodle(
      name: "Bến Xe XXX",
      up: "12",
      down:"0",
      des:
      "Hà Nội 22",
      ),
  Doodle(
    name: "Trạm thu phí",
    up: "5",
    down:"2",
    des:
    "km 111111",
  ),
  Doodle(
    name: "Từ Sơn - Bắc Ninh",
    up: "14",
    down:"6",
    des:
    "Bắc Ninh",
  ),
  Doodle(
    name: "Chí Linh - Hải Dương",
    up: "2",
    down:"3",
    des:
    "vvvvv",
  ),
  Doodle(
    name: "TP Hải Phòng",
    up: "0",
    down:"25",
    des:
    "Hải Phòng",
  ),
];
