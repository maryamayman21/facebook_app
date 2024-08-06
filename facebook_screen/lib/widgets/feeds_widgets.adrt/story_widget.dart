import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              image: AssetImage('assets/facebookStory.jpg'),
              fit: BoxFit.cover)),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.person_pin_circle_rounded,
                size: 32,
                color: Colors.blue,
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Owner',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
