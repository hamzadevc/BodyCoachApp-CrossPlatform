import 'package:body_coach/data/fitness_app_data.dart';
import 'package:body_coach/screens/home/components/featured/featured_card.dart';
import 'package:flutter/material.dart';

class FeaturedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 10,
            ),
            height: mq.height * 0.77,
            width: mq.width,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: exercises.length,
                itemBuilder: (ctx, i) {
                  return FeaturedCard(
                    title: exercises[i].title,
                    category: exercises[i].category,
                    duration: exercises[i].duration.toString(),
                    equipment: exercises[i].equipment,
                    imageUrl: exercises[i].imageUrl,
                    level: exercises[i].level,
                    students: exercises[i].totalSubscription,
                    star: exercises[i].stars,
                    workoutContent: exercises[i].workoutContent,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
