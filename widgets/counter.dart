// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_study_provider/providers/counts.dart';

import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    print('Counter');

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context
              .watch<Counts>()
              .count
              .toString(), //watch : 해당 위젯이 상태값의 변경을 감시. 상태값을 자체를 사용할 때 사용.
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(
          width: 40,
        ),
      ],
    );
  }
}
