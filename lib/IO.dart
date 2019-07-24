import 'dart:io';
import 'dart:async';
import 'dart:convert';

void foo() async {
  const filePath = 'lib/ab';
  var file = File(filePath);
  try {
    Stream<List<int>> stream = file.openRead();
    var lines = stream.transform(utf8.decoder).transform(LineSplitter());
    await for(var line in lines) {
      print(line);
    }
//    bool exist = await file.exists();
//    if(!exist) {
//      print('create ab.dart');
//      await file.create();
//    }
//    await file.writeAsString('hello world');
//    List<int> toBeWritten = [1, 2, 3];
//    await file.writeAsBytes(toBeWritten);
  } catch(e) {
    print(e);
  }
}

class Point {
  final int x;
  final int y;
  final String desc;

  Point(this.x, this.y, this.desc);

  Map<String, dynamic> toJson() => {
    'x' : x,
    'y' : y,
    'desc' : desc
  };

  Point.fromJson(Map<String, dynamic> map) : x=map['x'], y=map['y'], desc=map['desc'];

  @override
  String toString() {
    return "Point{x=$x, y=$y, desc=$desc}";
  }


}

void main() {
//  foo();
  var point = Point(1, 2, "first Point");
  var pointJson = json.encode(point);
  print('PointJson=$pointJson');

  var points = [point, point];
  var pointsJson = json.encode(points);
  print('PointsJson=$pointsJson');

  var decoded = json.decode(pointJson);
  print('decoded.runtimeType = ${decoded.runtimeType}');
  var point2 = Point.fromJson(decoded);
  print('point2=$point2');

  decoded = json.decode(pointsJson);
  print('decoded.runtimeType = ${decoded.runtimeType}');
  var points2 = <Point>[];
  for(var map in decoded) {
    points2.add(Point.fromJson(map));
  }
  print("points2=$points2");
}


