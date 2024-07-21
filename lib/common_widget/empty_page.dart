import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              "assets/images/box.png",
              width: 250,
              height: 250,
            ),
            const SizedBox(
              height: 16,
            ),
            Text("لا يوجد شيء لعرضة هنا"),
            const Spacer()
          ],
        ),
      ),
    );
    ;
  }
}
