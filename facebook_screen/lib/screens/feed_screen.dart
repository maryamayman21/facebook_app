import 'package:facebook_screen/widgets/feeds_widgets.adrt/post.dart';
import 'package:facebook_screen/widgets/feeds_widgets.adrt/story_scrollview.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff38559F),
            title: const Text(
              'FaceBook',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_circle_outlined,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.message_rounded,
                    color: Colors.white,
                  ))
            ],
          ),
          body: // const StoryScrollview()
              CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: StoryScrollview(),
              ),
              //
              SliverList.builder(
                itemBuilder: (contect, index) {
                  return const FacebookPost();
                },
                itemCount: 8,
              )
            ],
          )),
    );
  }
}
