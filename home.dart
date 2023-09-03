// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_study_provider/providers/counts.dart';
import 'package:flutter_study_provider/widgets/buttons.dart';
import 'package:flutter_study_provider/widgets/counter.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Counter(),
            SizedBox(
              height: 40,
            ),
            Buttons()
          ],
        ),
      ),
    );
  }
}
