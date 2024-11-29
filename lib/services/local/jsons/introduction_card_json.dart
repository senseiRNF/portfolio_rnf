import 'package:flutter/material.dart';

class IntroductionCardJson {
  String? title;
  Widget? content;

  IntroductionCardJson({
    this.title,
    this.content,
  });

  Widget showCard() {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            title != null ?
            Text(
              title!,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ) :
            const Material(),
            const SizedBox(
              height: 10.0,
            ),
            content ?? const Material(),
          ],
        ),
      ),
    );
  }
}