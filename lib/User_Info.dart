import 'package:flutter/material.dart';

class Users_Info extends StatelessWidget {
  const Users_Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 100,
            height: 100,
            child: const Placeholder(),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text('Iskander',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              )),
          const SizedBox(
            height: 8,
          ),
          const Text('+998(99) 609 90 69',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
          const SizedBox(
            height: 8,
          ),
          const Text('@ad_swim',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
