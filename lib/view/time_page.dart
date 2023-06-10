import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Timer"),
      ),
      body: Row(
        children: [
          const Text("Shuncha vaqt qoldi"),
          TimerCountdown(
            enableDescriptions: false,
            format: CountDownTimerFormat.minutesSeconds,
            endTime:
                DateTime.now().add(const Duration(minutes: 1, seconds: 30)),
            onEnd: () {
              debugPrint("Hello");
            },
          ),
        ],
      ),
    );
  }
}
