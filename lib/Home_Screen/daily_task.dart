import 'package:daily_task/Widgets/profile_card.dart';
import 'package:daily_task/Widgets/task_card.dart';
import 'package:daily_task/Widgets/title_button.dart';
import 'package:flutter/material.dart';

class DailyTask extends StatefulWidget {
  const DailyTask({super.key});

  @override
  State<DailyTask> createState() => _DailyTaskState();
}

class _DailyTaskState extends State<DailyTask> {
  @override
  Widget build(BuildContext context) {
    calender() {
      print("done");
    }

    return Scaffold(
      backgroundColor: Colors.deepPurple,

      //---------------appBar---------------------------------------
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: 35,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/avater.jpg")),
          ),
        ],
      ),

      //---------------body---------------------------------------

      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Muhit",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "6 Task are pending",
              style: TextStyle(
                color: Colors.white54,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ProfileCard(),
            SizedBox(
              height: 30,
            ),
            TitleBtn(),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    TaskCard(
                      countTask: 22,
                      height: 150,
                      taskText: 'Done',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TaskCard(
                      countTask: 10,
                      height: 110,
                      taskText: 'Ongoing',
                    ),
                  ],
                ),
                Column(
                  children: [
                    TaskCard(
                      countTask: 7,
                      height: 110,
                      taskText: 'In progress',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TaskCard(
                      countTask: 12,
                      height: 150,
                      taskText: 'Waiting for Review',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
