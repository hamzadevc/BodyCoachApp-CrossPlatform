import 'package:body_coach/data/course.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Course course;
  CategoryCard({this.course});
  @override
  Widget build(BuildContext context) {
    var _mq = MediaQuery.of(context).size;
    return Container(
      width: _mq.width * 0.4,
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(course.image),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 15, top: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              course.name,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              course.totalCourse + "Courses",
              style: TextStyle(
                  color: Color(0xFF8F95B2), fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
