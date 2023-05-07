import 'package:flutter/material.dart';

class TestAvata extends StatelessWidget {
  const TestAvata({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        alignment: const Alignment(0.0, 0.5),
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('images/james.jpg'),
            radius: 80,
            backgroundColor: Colors.purple,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black45,
            ),
            child: const Text(
              'Seubpong M',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      )
    );
  }
}
