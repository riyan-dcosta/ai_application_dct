import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UploadProgressBar extends StatelessWidget {
  final String stepName;
  final int stepNum;
  final StateProvider<bool> listenTo;

  const UploadProgressBar({
    super.key,
    required this.stepName,
    required this.stepNum,
    required this.listenTo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Consumer(builder: (context, ref, _) {
          bool isDone = ref.watch(listenTo);
          return CircleAvatar(
            radius: 10,
            backgroundColor: isDone ? Colors.green : Colors.black,
            child: isDone
                ? Icon(
                    Icons.check,
                    size: 14,
                    color: Colors.white,
                  )
                : Text(
                    "$stepNum",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
          );
        }),
        SizedBox(width: 8),
        Text(
          stepName,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
