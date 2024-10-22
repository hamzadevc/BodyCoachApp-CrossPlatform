import 'package:body_coach/data/fitness_app_data.dart';
import 'package:body_coach/screens/home/views/workout_view.dart';
import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  final String imageUrl;
  final String level;
  final String title;
  final String equipment;
  final String category;
  final String duration;
  final List<WorkOutContent> workoutContent;
  final String students;
  final String star;

  FeaturedCard(
      {this.title,
      this.imageUrl,
      this.category,
      this.duration,
      this.equipment,
      this.workoutContent,
      this.students,
      this.level,
      this.star});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        bottom: 15,
      ),
      height: mq.height * 0.3,
      width: mq.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //color: Color(0xFFF1F1F1),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              level,
              style: TextStyle(
                color: Color(0xFF4CDA63),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 27,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: mq.height * 0.09,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  equipment,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  category,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      'Total Time: ${duration} minutes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF4CDA63),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => WorkOutView(
                                title: title,
                                imageUrl: imageUrl,
                                stars: star,
                                totalSubscription: students,
                                workoutContent: workoutContent,
                                isUrl: true,
                              ),
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            'TRY',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
