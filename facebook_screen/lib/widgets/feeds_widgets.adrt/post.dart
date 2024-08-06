import 'package:facebook_screen/widgets/feeds_widgets.adrt/post_actions.dart';
import 'package:facebook_screen/widgets/feeds_widgets.adrt/post_data.dart';
import 'package:facebook_screen/widgets/feeds_widgets.adrt/post_interactions.dart';
import 'package:facebook_screen/widgets/feeds_widgets.adrt/user_post_details.dart';
import 'package:flutter/material.dart';

class FacebookPost extends StatelessWidget {
  const FacebookPost({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 300,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          UserPostDetails(),
          PostData(),
          PostInteractions(),
          SizedBox(
            height: 10,
            child: Divider(
              height: 2,
              endIndent: 5,
              indent: 5,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PostActions(text: 'Like', actionImage: 'assets/singleLike.jpg'),
              PostActions(text: 'Comment', actionImage: 'assets/comment.jpg'),
              PostActions(text: 'Share', actionImage: 'assets/share.png'),
            ],
          ),
          SizedBox(
            height: 10,
            child: Divider(
              height: 2,
              endIndent: 5,
              indent: 5,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
