import 'package:complete_task/Screens/widgets/custom_container_clip_path.dart';
import 'package:complete_task/Screens/widgets/custom_column_widget.dart';
import 'package:complete_task/Screens/widgets/custom_search_hotels.dart';
import 'package:flutter/material.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              'assets/images/view.jpg',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 CustomTextContainerWithClipPath(),
                 SizedBox(
                  height: 5,
                ),
                Stack(
                  children: [
                    CustomSearchOfHotel(),
                    CustomColumnOfWidget(),

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
