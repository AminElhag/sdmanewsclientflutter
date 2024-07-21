import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage(
      {super.key, required this.errorMessage, required this.onRetry});

  final String errorMessage;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Image.asset("assets/images/man.png",width: 250,height: 250,),
            const SizedBox(
              height: 16,
            ),
            Text(errorMessage),
            TextButton(onPressed: onRetry, child: Text("اعد المحاولة")),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
