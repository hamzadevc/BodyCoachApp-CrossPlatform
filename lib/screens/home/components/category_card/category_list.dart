import 'package:body_coach/data/course.dart';
import 'package:body_coach/screens/home/components/category_card/category_card.dart';
import 'package:body_coach/screens/home/views/workout_view.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: courseList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, i) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => WorkOutView(
                      title: courseList[i].name,
                      image: courseList[i].image,
                      stars: courseList[i].star,
                      totalSubscription: courseList[i].students,
                      courseContent: courseList[i].courseContent,
                    ),
                  ),
                );
              },
              child: CategoryCard(
                course: courseList[i],
              ),
            );
          }),
    );
  }
}
