import 'package:facebook_screen/widgets/feeds_widgets.adrt/story_widget.dart';
import 'package:flutter/material.dart';

class StoryScrollview extends StatelessWidget {
  const StoryScrollview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const StoryWidget();
        },
      ),
    );
  }
}
