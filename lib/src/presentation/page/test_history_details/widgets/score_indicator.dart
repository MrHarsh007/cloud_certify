import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../all_export.dart';

class ScoreIndicator extends StatelessWidget {
  final double scorePercent;

  const ScoreIndicator({super.key, required this.scorePercent});

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 70.0,
      lineWidth: 13.0,
      animation: true,
      percent: scorePercent,
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${(scorePercent * 100).toStringAsFixed(0)}%",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
          const Text(
            "Score",
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
        ],
      ),
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: Colors.green,
      backgroundColor: Colors.grey[300]!,
    );
  }
}
