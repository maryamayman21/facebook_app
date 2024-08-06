import 'package:flutter/material.dart';

class UserPostDetails extends StatelessWidget {
  const UserPostDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //icon
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_add,
              color: Color.fromARGB(187, 0, 0, 0),
              size: 32,
            )),
        const Column(
          children: [
            Text(
              'User',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '3h',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.public,
                  size: 16,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
