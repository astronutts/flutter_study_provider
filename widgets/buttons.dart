// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_study_provider/providers/counts.dart';

import 'package:flutter_study_provider/widgets/counter.dart';
import 'package:provider/provider.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<Counts>().add();
          },
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          width: 50,
        ),
        ElevatedButton(
          onPressed: () {
            context.read<Counts>().remove();
          },
          child: const Icon(
            Icons.remove,
          ),
        )
      ],
    );
  }
}
